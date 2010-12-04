;; Haskel mode (http://projects.haskell.org/haskellmode-emacs)
(load "haskell-mode/haskell-site-file")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(add-hook 'haskell-mode-hook 'font-lock-mode)


;; Prolog mode (http://bruda.ca/emacs-prolog)
(setq load-path (cons "prolog" load-path))

(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
(setq prolog-system 'swi)
(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
				("\\.m$" . mercury-mode))
			      auto-mode-alist))


;; CC mode
(setq c-basic-offset 4)

(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "k&r")))

(defun my-make-CR-do-indent ()
  (define-key c-mode-base-map "\C-m" 'c-context-line-break))
(add-hook 'c-initialization-hook 'my-make-CR-do-indent)


;; "Typing Of Emacs" game
;; First, open a text file (such as "typing/corncob.txt") in Emacs,
;; then run command typing-of-emacs (M-x).
(setq load-path (cons "typing" load-path))
(autoload 'typing-of-emacs "typing/typing" "The Typing Of Emacs, a game." t)
