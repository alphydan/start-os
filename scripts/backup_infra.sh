#!/bin/bash


# General Strategy:

# - Backup by running anacron jobs


# - use rclone to sync selected folders of /home/ to Storj
#   - google photos
#   - software
#   - music
#   - selected movies
# confirm that it doesn't upload everything every time if files don't change
# prompt before backup with reminder that rsync will delete what has been deleted locally
# --> Understand: What happens when you delete a file in a directory?
#                 What happens when a file is modified? Does the whole file go up again?


# - use restic to backup secure repos to rsync.net
#  one repo for code:
#   - code: daily (with lots of excludes)
#   - .ssh and other configs
#  one repo for work:
#   - work / consulting: daily
#   - baut / kevalin / 121collective docs (billing, accounting, legal)
#   - .ssh and other configs
#  one repo for mostly personal:
#   - config files: daily (dotfiles, .config, .bashrc, ...)
#   - docs: daily, Anki
#   - bibliography: daily (zotero, books, bookmarks)
#   - projects (writing, real_world_projects, etc)
#   - bit: daily
#   - security: .ssh
#   - backup (all document backups)

# notes for rclone:
# - there is no time tracking component (no old versions, only current backup)
# - rclone sync will delete files on backup if they are deleted locally
# - rclone uploads whole files, not just diffs.

# notes for restic:
# - it is possible to restore snapshots in time
# - only diffs on chunks are uploaded (not whole files)

printf "\n\n ~~~~~~~  SETTING UP BACKUP INFRASTRUCTURE ~~~~~~~~ \n\n"
# Setup backup infrastructure
# printf "\n\n make daily anacron folder \n\n"
# mkdir -p ~/.local/etc/cron.daily ~/.var/spool/anacron

# install rclone
if command -v rclone >/dev/null 2>&1; then
    printf "rclone is already installed.\n"
else
    printf "\n\n install RCLONE \n\n"
    sudo apt update
    sudo -v ; curl https://rclone.org/install.sh | sudo bash
fi

# install restic
if command -v restic >/dev/null 2>&1; then
    printf "restic is already installed.\n"
else
    printf "\n\n install RESTIC \n\n"
    sudo apt install restic
fi

## MAKE SURE RANDOM KEY FOR KEEPASS IS BACKED
# 
# https://storj.dev/dcs/third-party-tools/rclone/rclone-native

printf "Start with rclone config >> new >> name_of_remote >> \n"
printf ">> 36 (for storj) >> existing access grant >> OK >> quit\n"
