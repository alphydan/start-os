
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")



(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(setq visible-bell t)
(display-time-mode 1)

; disable splash screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#1B2229" "#BF616A" "#A3BE8C" "#ECBE7B" "#8FA1B3" "#c678dd" "#46D9FF" "#DFDFDF"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "51522fe11d4f7e40ced10a172ccfc03149b3db3896bb82b8babb26019d1098d2" "781ea25554db58ab69ed8b622cf24d3c7ca379b809671473460357f5fbd10c48" "f5f41901c774d420e39f960ad61812d9e17ce05574ef4e0b8bc493099affe627" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "356e5cbe0874b444263f3e1f9fffd4ae4c82c1b07fe085ba26e2a6d332db34dd" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "20d2facd6ec9ca08ad96b982fa36b0fc91b4f248a7f8dacac4dda6a81c459ba8" default)))
 '(fci-rule-color "#858FA5")
 '(flymake-error-bitmap
   (quote
    (flymake-double-exclamation-mark modus-theme-fringe-red)))
 '(flymake-note-bitmap (quote (exclamation-mark modus-theme-fringe-cyan)))
 '(flymake-warning-bitmap (quote (exclamation-mark modus-theme-fringe-yellow)))
 '(font-use-system-font t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(hl-todo-keyword-faces
   (quote
    (("HOLD" . "#e5f040")
     ("TODO" . "#feacd0")
     ("NEXT" . "#b6a0ff")
     ("THEM" . "#f78fe7")
     ("PROG" . "#00d3d0")
     ("OKAY" . "#4ae8fc")
     ("DONT" . "#58dd13")
     ("FAIL" . "#ff8059")
     ("DONE" . "#44bc44")
     ("NOTE" . "#f0ce43")
     ("KLUDGE" . "#eecc00")
     ("HACK" . "#eecc00")
     ("TEMP" . "#ffcccc")
     ("FIXME" . "#ff9977")
     ("XXX+" . "#f4923b")
     ("REVIEW" . "#6ae4b9")
     ("DEPRECATED" . "#aaeeee"))))
 '(ibuffer-deletion-face (quote dired-flagged))
 '(ibuffer-filter-group-name-face (quote dired-mark))
 '(ibuffer-marked-face (quote dired-marked))
 '(ibuffer-title-face (quote dired-header))
 '(jdee-db-active-breakpoint-face-colors (cons "#100e23" "#906cff"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#100e23" "#95ffa4"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#100e23" "#565575"))
 '(line-number-mode nil)
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-tomorrow yasnippet-snippets yasnippet elixir-mode monokai-theme helm markdown-mode elixir-yasnippets doom-themes dired-icon alchemist)))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background "#1b182c")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#95ffa4")
    (cons 40 "#b8f7a6")
    (cons 60 "#dbf0a8")
    (cons 80 "#ffe9aa")
    (cons 100 "#ffd799")
    (cons 120 "#ffc488")
    (cons 140 "#ffb378")
    (cons 160 "#eda79b")
    (cons 180 "#db9cbd")
    (cons 200 "#c991e1")
    (cons 220 "#db8bc0")
    (cons 240 "#ed85a0")
    (cons 260 "#ff8080")
    (cons 280 "#d4757d")
    (cons 300 "#aa6a7a")
    (cons 320 "#805f77")
    (cons 340 "#858FA5")
    (cons 360 "#858FA5")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
 '(xterm-color-names
   ["#000000" "#ff8059" "#44bc44" "#eecc00" "#33beff" "#feacd0" "#00d3d0" "#a8a8a8"])
 '(xterm-color-names-bright
   ["#181a20" "#f4923b" "#58dd13" "#e5f040" "#72a4ff" "#f78fe7" "#4ae8fc" "#ffffff"]))

(setq initial-buffer-choice "/media/dersu/ExtraDrive1/code/") ; open code folder to start


;;;   display line number ;;;
(require 'linum)
(global-linum-mode 1)
(autoload 'linum "linum-mode" t)
(setq linum-format "%d ")



;;;;;;;;;;;  MOVING AROUND WINDOWS  ;;;;;;;;;;;;;

(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window


;; go to line ;; replaces set face;;

(global-set-key "\M-g" 'goto-line)

;; disable scrollbar and toolbar
(toggle-scroll-bar -1)
(tool-bar-mode -1)


; y n instead of yes no
(defalias 'yes-or-no-p 'y-or-n-p)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-hr-face ((t (:inherit markdown-markup-face :background "green")))))



       ;;;;;;;;;;
       ;; HELM ;;
       ;;;;;;;;;;



(require 'helm)
;; (require 'helm-config)

(setq-default helm-M-x-fuzzy-match t)
(global-set-key "\C-x\C-m" 'helm-M-x)
(global-set-key "\C-c\C-m" 'helm-M-x)
(global-set-key (kbd "M-m") 'helm-for-files)


  (progn
    (require 'helm-config)
    ;; limit max number of matches displayed for speed
    (setq helm-candidate-number-limit 100)
    ;; ignore boring files like .o and .a
    (setq helm-ff-skip-boring-files t)
    )



;; show kill-ring: M-y 
;; hit enter to yank (paste) selected keyring item
;; https://tuhdo.github.io/helm-intro.html (learn more)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)


;; recent + open buffers
;; for new buffer just type name and press RET under "Create Buffer"
;; (global-set-key (kbd "M-m") 'helm-mini)

;; learn more: http://thescratchcastle.com/posts/emacs-and-helm.html
;; search google with autocompletions (RET to open in browser)
(global-set-key (kbd "C-c gg") 'helm-google-suggest)

;; research helm-for-files
;; http://pragmaticemacs.com/emacs/find-and-open-files-from-anywhere-with-helm-for-files/


(require 'uniquify) ;; unique names for buffers
(setq uniquify-buffer-name-style 'post-forward) 
;;; https://www.emacswiki.org/emacs/RecentFiles


;; to minimize functions
;; get this into Anki!
;; (add-hook 'python-mode-common-hook 'hs-minor-mode)
(defun my_hideshow-ignore-setup-failure() (ignore-errors (hs-minor-mode)))
(define-globalized-minor-mode global-hs-minor-mode   hs-minor-mode my_hideshow-ignore-setup-failure)
(global-hs-minor-mode 1)
(global-set-key (kbd "<f6>") 'hs-toggle-hiding)
(global-set-key (kbd "<f4>") 'hs-hide-all)
(global-set-key (kbd "<f5>") 'hs-show-all)


;; show icons in dired
(add-hook 'dired-mode-hook 'dired-icon-mode)
(load "dired+")
(require 'dired+)
(diredp-toggle-find-file-reuse-dir 1)
;; https://emacs.stackexchange.com/questions/202/close-all-dired-buffers
;; don't open a new buffer for each directory visited

;; (add-hook 'dired-mode-hook 'dired-hide-details-mode)
      ;; (lambda ()
      ;;   (dired-hide-details-mode)
      ;;   (dired-sort-toggle-or-edit)
      ;; 	(dired-icon-mode)))

;; https://github.com/hlissner/emacs-doom-themes
  (require 'doom-themes)

  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled

  ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each
  ;; theme may have their own settings.
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)

  ;; Enable custom neotree theme
  (doom-themes-neotree-config)  ; all-the-icons fonts must be installed!




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Shortcuts To select Themes ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(global-set-key (kbd "C-1")
                (lambda () (interactive)
                  (load-theme 'misterioso t)))

(global-set-key (kbd "C-2")
                (lambda () (interactive)
                  (load-theme 'sanityinc-tomorrow-day t)))

(global-set-key (kbd "C-3")
                (lambda () (interactive)
                  (load-theme 'wombat t)))

(global-set-key (kbd "C-4")
                (lambda () (interactive)
                  (load-theme 'sanityinc-tomorrow-blue t)))









;; AUTOCOMPLETE


;; Backup Files (outside of main directory)
;; Default and per-save backups go here:
(setq backup-directory-alist '(("" . "~/.emacs.d/backup/per-save")))

(defun force-backup-of-buffer ()
  ;; Make a special "per session" backup at the first save of each
  ;; emacs session.
  (when (not buffer-backed-up)
    ;; Override the default parameters for per-session backups.
    (let ((backup-directory-alist '(("" . "~/.emacs.d/backup/per-session")))
          (kept-new-versions 3))
      (backup-buffer)))
  ;; Make a "per save" backup on each save.  The first save results in
  ;; both a per-session and a per-save backup, to keep the numbering
  ;; of per-save backups consistent.
  (let ((buffer-backed-up nil))
    (backup-buffer)))

(add-hook 'before-save-hook  'force-backup-of-buffer)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; KEY BINDINGS ;;;;;;;;;;;;;;;;;;;;;;;


(global-set-key (kbd "C-c b") 'comment-box)



   ;; (add-to-list 'load-path
   ;;              "~/path-to-yasnippet")
   (require 'yasnippet)
   (yas-global-mode 1)
   ;; Snippets http://andreacrotti.github.io/yasnippet-snippets/snippets.html
