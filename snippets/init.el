;; MELPA Setup
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Basic customization
(set-default-font "Consolas-12")
(global-linum-mode t)
(setq make-backup-files nil)
(add-hook 'java-mode-hook #'smartparens-mode)
(yas-global-mode 1)

;; Go through custom_lisp for custom lisp files
(setq defuns-dir (expand-file-name "custom_lisp" user-emacs-directory))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))


;; Custom colors
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("417a88b756ab12e722a583a142b63e13ba41e8cb53023bf1711611c905a46e0e" "f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "6e75ac3db222f3b294adac476342aa6a872aed5384905de6582a24fab7bbd773" "e59d42976c3f0401dd62d36d26dfe4bf37c1192d78cbe225a92b0f82ad19580f" default)))
 '(package-selected-packages
   (quote
    (multiple-cursors zenburn-theme yasnippet windata smartparens projectile neotree minimap memoize linum-relative font-lock+ dracula-theme custom-colors-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized auto-complete atom-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 
(load-theme 'custom-colors t)
(setq inhibit-startup-screen t)