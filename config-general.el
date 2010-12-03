(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(selection-coding-system (quote utf-16le-dos))
 '(show-paren-mode t)
 '(tool-bar-mode nil nil (tool-bar))
 '(trash-directory "~/.Trash")
 '(word-wrap t)
 '(woman-locale "ENU"))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(setq linum-format "%4d ")

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq inhibit-startup-screen t)
;; (setq initial-buffer-choice "C:/Languages/Haskell/empty")
;; (cd "C:/Emacs/EmacsConfig/typing")
;; (setq default-directory "C:/Emacs/EmacsConfig/typing")

;; "HP Photosmart 3200 series"
(setq printer-name "192.168.1.70")

(setq user-full-name "Adrian Istrate")

(global-set-key [(control meta down-mouse-3)] 'imenu)

;; (setq default-major-mode 'text-mode)
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)
;; (add-hook 'text-mode-hook (lambda () (refill-mode 1)))

(setq initial-frame-alist '((top . 0) (left . 0)))

(blink-cursor-mode t)

(setq default-frame-alist
      '((width . 96) (height . 57)
        (cursor-type . bar)
        (cursor-color . "black")
	))

;; (assq-delete-all 'font default-frame-alist)

(add-to-list 'default-frame-alist
        '(font . "-*-Courier New-normal-r-*-*-13-*-*-*-c-*-*-*")
        ;; '(font . "-*-Inconsolata-*-*-*-*-17-*-*-*-*-*-*-*")
        ;; '(font . "-*-DejaVu Sans Mono-normal-r-*-*-14-*-*-*-c-*-*-*")
        ;; '(font . "-*-Anonymous Pro-normal-r-*-*-15-*-*-*-c-*-*-*")
        )
