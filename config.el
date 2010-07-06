;; Stuff that normally sits in .emacs.
;; This file is loaded by the .emacs file found in the Home folder. See also file _.emacs.

(load "config-general")

(load "config-languages")

;; Load settings specific to this machine, which should NOT be checked into
;; the Git repository and be shared with other machines.
;; (The name of this file is in .gitignore.)
(if (locate-file "config-local.el" load-path)
    (load "config-local"))
