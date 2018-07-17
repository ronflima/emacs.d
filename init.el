;; Customizations
;; Author: Ronaldo F. Lima <ronaldo@nineteen.com.br>

;; Site lisp
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")

;; MELPA support
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(put 'erase-buffer 'disabled nil)
;; No tabs!
(setq-default indent-tabs-mode nil)
(setq display-time-format "%H:%M:%S")
(display-time-mode 1)

;; Skelletons
(add-to-list 'load-path "~/.emacs.d/skeletons")
(load-library "skeletons.el")
(add-hook 'find-file-hook 'auto-insert)
(setq auto-insert-alist '(("router.*\\.js$"    . node-router)
                          ("\\.js$"    . node-new-file)
						  ("\\.rb$"    . ruby-formaweb-file)
                          ("\\.c$"     . c-mit-file)
                          ("\\.h$"     . c-mit-file)
                          ("\\.swift$" . swift-mit-file)
                          ("\\.sql$" . skel-sql-file)))

;; Web Mode

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(defun chiclete-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
)
(add-hook 'web-mode-hook  'chiclete-mode-hook)

;; MongoDB
(defcustom inf-mongo-command "mongo 127.0.0.1:27017" "Default MongoDB shell command used.")

;; Javascript preferences
(setq js-indent-level 4)

;; Markdown support
(add-to-list 'load-path "~/.emacs.d/modes")
(setq markdown-command "/Users/ronaldo/Applications/bin/markdown")

;; Autoload options
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; JADE support
(require 'sws-mode)
(require 'jade-mode)
(autoload 'sws-mode "sws-mode")
(autoload 'jade-mode "jade-mode")
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; Smalltalk mode
;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/gnu-smalltalk")
;(require 'smalltalk-mode)
;(require 'gst-mode)
;(push '("\\.st\\'" . smalltalk-mode) auto-mode-alist)

;; SCSS support
;;(require 'scss-mode)
;;(autoload 'scss-mode "scss-mode")
;;(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; SASS mode
;;(require 'sass-mode)
;;(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))

;; Modes
(auto-fill-mode 1)

;; EDE mode
(global-ede-mode t)

;; Colors and fonts
(turn-on-font-lock)       
(setq make-backup-files nil) 
(global-auto-revert-mode 1)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 145 :weight 'book)
(setq mac-allow-anti-aliasing t) 
(set-face-foreground 'default "green")
(set-face-background 'default "black")
;; Visuals
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 120))

;; Encodings
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)

;; I prefer the scroll bar on the right side.
;;(set-scroll-bar-mode 'right)

(setq inhibit-startup-message t)

;; Abbrev settings
(setq abbrev-file-name "~/.emacs.d/abbrevs.el")
(setq abbrev-mode t)

;; Keymaps
(global-set-key "%"  'match-paren)
(global-set-key [f2] 'shell)
(global-set-key [f3] 'hs-minor-mode)
(global-set-key [f4] 'git-status)
(global-set-key [f6] 'other-window)
(global-set-key [f7] 'compile)
(global-set-key [M-down] 'end-of-buffer)
(global-set-key [M-up] 'beginning-of-buffer)
;; Global variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode 1)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(default-tab-width 4 t)
 '(dired-use-ls-dired nil)
 '(fill-column 80)
 '(global-font-lock-mode t nil (font-lock))
 '(gutter-buffers-tab-visible-p nil)
 '(line-number-mode 1)
 '(linum-format " %5i ")
 '(menu-bar-mode t)
 '(modeline-3d-p nil)
 '(nxml-section-element-name-regexp
   "article\\|\\(sub\\)*section\\|chapter\\|div\\|appendix\\|part\\|preface\\|reference\\|simplesect\\|bibliography\\|bibliodiv\\|glossary\\|glossdiv\\|methodResponse")
 '(package-selected-packages
   (quote
    (csv-mode csv csv-nav docker-compose-mode docker ssh emacsql-sqlite emacsql-mysql emacsql-psql dockerfile-mode swift-mode lex json-mode graphviz-dot-mode web-mode scss-mode sass-mode rvm ruby-dev ruby-compilation realgud-rdb2 org omniref list-utils jump inf-mongo gitty git-command git gist)))
 '(toolbar-visible-p nil)
 '(truncate-lines nil)
 '(user-mail-address "ronaldo@nineteen.com.br")
 '(visible-bell t))
(prefer-coding-system 'utf-8)
(tool-bar-mode 0)
(cd "~/")
(setq python-indent-offset 4)
;; Match parenthesis function
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; Hooks
;; Make hideshow minor mode always active for all program modes
(add-hook 'prog-mode-hook #'(lambda () (hs-minor-mode t)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Support to inferior shell
(setq shell-file-name "bash")
(setq explicit-bash-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; macOS Finder Open support
(eval-after-load "dired"
  '(progn
     (define-key dired-mode-map (kbd "z")
       (lambda () (interactive)
         (let ((fn (dired-get-file-for-visit)))
           (message "Opening `%s'" fn)
           (start-process "default-app" nil "open" fn))))))

