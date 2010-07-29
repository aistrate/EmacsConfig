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
 '(woman-locale "ENU"))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(setq linum-format "%4d ")

(setq inhibit-startup-screen t)
;;(setq initial-buffer-choice "C:/Languages/Haskell/empty")
;;(cd "C:/Emacs/EmacsConfig/typing")
;;(setq default-directory "C:/Emacs/EmacsConfig/typing")

;; "HP Photosmart 3200 series"
(setq printer-name "192.168.1.70")

(setq user-full-name "Adrian Istrate")

(global-set-key [(control meta down-mouse-3)] 'imenu)

(setq initial-frame-alist '((top . 0) (left . 0)))

(setq default-frame-alist
      '((width . 96) (height . 57)
        ;;(cursor-color . "white")
        (cursor-type . bar)
        ;;(foreground-color . "yellow")
        ;;(background-color . "black")
        ;;(font . "-*-Courier-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
        ;;(font . "-*-ProggyClean-normal-r-*-*-8-*-*-*-c-*-*-*")
        (font . "-*-Courier New-normal-r-*-*-13-*-*-*-c-*-*-*")
	))
