;; Initial bootstrap configuration
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

;; setup use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; bootstrap "config.org"
(org-babel-load-file(expand-file-name "~/.emacs.d/config.org"))
