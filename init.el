;; MELPA Setup
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(require 'auto-complete)
(require 'smartparens-config)
(require 'multiple-cursors)
(require 'expand-region)

;; Basic customization
;;(smartparens-global-mode t)
(set-default-font "Consolas-12")
(global-linum-mode t)
(setq make-backup-files nil)
(global-auto-complete-mode t)
(setq ac-delay 0.5)
(yas-global-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)


;; Keybinds
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "M-e") 'er/expand-region)
(global-set-key (kbd "C-x g") 'magit-status)


;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
'(flycheck-check-syntax-automatically (quote (save idle-change mode-enabled)))
'(flycheck-idle-change-delay 4)
;;(setq flycheck-highlighting-mode 'lines)


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
    ("a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "1df7cf0cda649ef42da6d8052b85a99ffb628893e3ba4e8cfcab5cfa1d5fb88a" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "c1db593a2f9c2df0aada14c5eb46e23bc6f9e5e30dac4efa4dbf94fd5c06c9c0" "18af0002df126540538262dfa3624dd31b8d94cd68be5bb025e68f65c5c26a5b" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "50ed796f0ee859cf42233a9066adfb761fb582d955058a81a22a3d8f6b50296b" "417a88b756ab12e722a583a142b63e13ba41e8cb53023bf1711611c905a46e0e" "f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "6e75ac3db222f3b294adac476342aa6a872aed5384905de6582a24fab7bbd773" "e59d42976c3f0401dd62d36d26dfe4bf37c1192d78cbe225a92b0f82ad19580f" default)))
 '(package-selected-packages
   (quote
    (magit expand-region flycheck rainbow-mode js2-mode multiple-cursors zenburn-theme yasnippet windata smartparens projectile neotree minimap memoize font-lock+ custom-colors-theme auto-complete atom-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 

(load-theme 'custom-colors t)
(setq inhibit-startup-screen t)
