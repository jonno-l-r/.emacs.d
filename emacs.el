;; Initial bootstrap configuration
;; Don't edit this file. Make a copy and rename it '.emacs.el', then move it
;; into the parent of the .emacs.d directory.
;; See "config.org" for full configuration script
;; This file must be in the same directory as the .emacs.d configuration
;; directory

(require 'cl)

;; set package repository
(require 'package)
;;(setq package-enable-at-startup nill)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")
             '("org" . "http://orgmode.org/elpa/"))
(package-initialize)

;; bootstrap "config.org"
(org-babel-load-file(expand-file-name "~/.emacs.d/config.org"))
