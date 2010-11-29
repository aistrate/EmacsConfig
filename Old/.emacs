(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(abbrev-mode t)
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(safe-local-variable-values (quote ((Syntax . Common-Lisp))))
 '(selection-coding-system (quote utf-16le-dos))
 '(show-paren-mode t)
 '(tool-bar-mode nil nil (tool-bar))
 '(trash-directory "~/.Trash")
 '(woman-locale "ENU"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(setq european-calendar-style 't)

(setq inhibit-startup-screen t)
;;(calendar)
;;(diary)
;;(setq initial-buffer-choice "~/Languages/Haskell/empty")

(setq default-frame-alist
      ;; '((width . 96) (height . 58)
        '((width . 110) (height . 65)
      ;; '((width . 235) (height . 65)
        (cursor-color . "black")
        (cursor-type . bar)
        ;;(foreground-color . "yellow")
        ;;(background-color . "black")
        ;;(font . "-*-Courier-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
        ;;(font . "-*-Courier New-*-*-*-*-16-*-*-*-*-*-*-*")
        ;;(font . "-*-Courier New-*-*-*-*-15-*-*-*-*-*-*-*")
        (font . "-*-Inconsolata-*-*-*-*-17-*-*-*-*-*-*-*")
        ;;(font . "-*-Deja Vu Sans Mono-*-*-*-*-14-*-*-*-*-*-*-*")
        ;;(font . "-*-Bitstream Vera SansMono-*-*-*-*-14-*-*-*-*-*-*-*")
	))

(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(setq linum-format "%4d ")

(setq initial-frame-alist '((top . 0) (left . 0)))


;; Haskel mode (http://projects.haskell.org/haskellmode-emacs)
(load "~/Emacs/haskell-mode-2.6.4/haskell-site-file")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(add-hook 'haskell-mode-hook 'font-lock-mode)
(global-set-key [(control meta down-mouse-3)] 'imenu)

(put 'scroll-left 'disabled nil)


(fset 'transpose-names
   (lambda (&optional arg) "Keyboard macro." (interactive "p") 
     (kmacro-exec-ring-item (quote ("\346,\364" 0 "%d")) arg)))

;;(global-set-key "\C-x\C-kt" 'transpose-names)


(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq exec-path (append exec-path '("/opt/local/bin")))

(load "~/Emacs/git/git")

(require 'git)


(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))


(add-to-list 'load-path "~/Emacs/sml")
(autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
(autoload 'run-sml "sml-proc" "Run an inferior SML process." t)


(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)


(defun scroll-down-keep-cursor ()
   ;; Scroll the text one line down while keeping the cursor
   (interactive)
   (scroll-down 1))

(defun scroll-up-keep-cursor ()
   ;; Scroll the text one line up while keeping the cursor
   (interactive)
   (scroll-up 1))

(global-set-key "\M-p" 'scroll-down-keep-cursor)
(global-set-key "\M-n" 'scroll-up-keep-cursor)

;;(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(setq user-mail-address "adr_istrate@yahoo.com")
(setq user-full-name "Adrian Istrate")


(add-to-list 'load-path "~/Emacs/html")
(autoload 'html-helper-mode "html-helper-mode" "HTML helper mode" t)

(setq auto-mode-alist (cons '("\\.html?$" . html-helper-mode) auto-mode-alist))

(setq tempo-interactive t)

(setq nxml-slash-auto-complete-flag t)


(setenv "PATH" (concat (getenv "PATH") ":/usr/texbin"))


(add-to-list 'load-path "~/Emacs/typing")
(autoload 'typing-of-emacs "typing" "The Typing Of Emacs, a game." t)


;;(global-font-lock-mode t)


;; Turn on CEDET's fun parts
;;(setq semantic-load-turn-useful-things-on t)
;; Load CEDET
;;(load-file "/Users/aistrate/Emacs/cedet-1.0pre6/common/cedet.el")

(put 'upcase-region 'disabled nil)


(add-to-list 'load-path "~/Emacs/slime")
;;(require 'slime-autoloads)
(require 'slime)

(add-hook 'slime-mode-hook
           (lambda ()
             (unless (slime-connected-p)
               (save-excursion (slime)))))

(eval-after-load "slime"
  '(progn
    (add-to-list 'load-path "~/Emacs/slime/contrib")
    (slime-setup '(slime-fancy slime-banner))
    (setq slime-complete-symbol*-fancy t)
    (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)))

;; Optionally, specify the Lisp program you are using. Default is "lisp"
;; If the Allegro directory is not in your PATH environment variable
;; this should be a fully qualified path.
;; choose one of the below based on Express or non-Express usage
;; (setq inferior-lisp-program "alisp") 
;; (setq inferior-lisp-program "/Applications/AllegroCL/allegro-express")
(setq inferior-lisp-program "allegro-express")

(setenv "PATH" (concat (getenv "PATH") ":/Applications/AllegroCL"))
(setq exec-path (append exec-path '("/Applications/AllegroCL")))

(setq default-directory "~/Languages/CommonLisp/PAIP/Work")

;(split-window-horizontally)
