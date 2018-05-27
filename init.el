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
;;(add-hook 'after-init-hook #'global-flycheck-mode)
;;'(flycheck-check-syntax-automatically (quote (save idle-change mode-enabled)))
;;'(flycheck-idle-change-delay 4)
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
    ("99a1d8cb3075a0d20388084744ee21eba0da5cd2a7edfc00557ba7f899e85c64" "188ee3c6a173bb784e9604c32ccf4bed0c04656a5d2788bccb0d8ba254acd18b" "e521df9ae1b4bb970e246835c852390ab696d16eb61628501fe0d21d39e0d866" "1e3e74d40a15e31b305a5ba8b4d39d69856738e851f09b02eb95751823d98006" "f282aaaec3af21d4fdd4aa33cd72ffa3f8710811ead02b89045033000de71c25" "43c844e10797692b61e4ea1c6becdb21fb5b9a4fbb4a0b01d3e846779492c615" "e751988f5501069528564ef67a664a8826ed1f4f2d4bfe5bc7094859c8900eb8" "89ab40c6fb085acd30851aa43d5876f4e4f0862b5af49d7317af2dbd52705176" "de6ba741ad87accbe47389750cf44f0dd3293dc100a2be13ca1774af6c67c9f4" "9c3fd668d65fefcd3c9021e2fc3d161eb2ef539133c3acc2391e2f0be357364f" "d54aa876e320b2995749a5e7cb47b718299dad7699d406796f30f0bc75bdfe5b" "9f16b604a7d10080bc786157d882015761032dd5e50c13893260e09beecf65d5" "a78b413cdd04867a36261846f5cd63c6365c47e5d95ce59b69bf4781d285414c" "43ff4cc736a0b84670e5b3e1ab6145b7cff86f086379d19f8af376b6bc2f7eb6" "17f5f72e85f0fea16bfc976754b98a3faa837304b8fce18ec7a7c643bdfcbc2f" "9a96942461395f87061f5dd8b9c72448cee2be0d0b5e38dbe888f8e765f2e7e4" "d65803cfe81584f35302b24bce6a3947b115b178fdbff5b10873696515bf1b73" "1bfd54bbb4982d8aa6daf14f44f89fef13f0abe4664da705c1f0a6fdbda08637" "a31b6a39ecc54e305c6914527a865d17316700b732f13436d325ba09bec96286" "662ac4b108b1e7304e250f374a3d8ff66e4ee5c1b348ef07ef108f1eabcd7322" "e4997392685ed917d29396b24d5d8fbea05a40ba60102bc2ddf86a87a77a1f61" "659c5c251a935bb8a4c0c7b9cd0eb0c83fc040a0009b1ad2364620d927d6aad4" "500111052354ea0ce22c10c8634baa5c1fe59261ff5c7e85003b6157135ea7c3" "2a8a03a2401c5db5b8cdaf6c2de84d50a08bf94e930c509427b09c24e4d765e1" "f6a76e7d162ca1ad474e8b3b7764ef3d8b28c78adcc12f184d5c3a19f311dc31" "611d81bb198d8719dae81a566d5ec157c9c6b8812de666e814c9df4780cffefe" "ab813d31fd48161d41e02188c33de34bf5114b92de28bc0f2ce69ba23be2a891" "7957e2286f58f806ac43ff0747b666e7ed574e5166687786fcc762a90ba9ccfe" "c90bc8db822b110c4434c5e543e5be2dffaad1a12a83898d9d1ce0988dd24ff5" "da9f1de74bcebc43a968b4b1684fdc0a65e108f8a012c0ac25ea167fad80ff21" "6ce8e1549e6b8d054996d09a89cbd93ef99bba08300596d6da58bf31f2f79b90" "139849395814d421fb21b6b452062b804a91e73fc571d66629e3b53c36a8ae71" "06f7120b6fc04eee6acf6b8e17de3b93531f11923d5517921dd01595b325e59c" "feb21eb9a107bc4b1df521ebe414d7148b08d1d2f56b7e1158831380c28222b3" "7644a01e568d12fd9996dd8e32841373b8d709c2b8917c339f6c536f65e9fd1e" "41085d26183ff3a2c950fe158cbe8f2fcf4f5d19e060bb3f1a3be646d02fce42" "88c3875ab9afb3ffee8c7b10e5c1f5e243fed9689ccb9e6d7373549aa61b1766" "de3f3423556361a2d608ddcaad509d4f51355c179fc1c2eda78cbed446c0263c" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "1df7cf0cda649ef42da6d8052b85a99ffb628893e3ba4e8cfcab5cfa1d5fb88a" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "c1db593a2f9c2df0aada14c5eb46e23bc6f9e5e30dac4efa4dbf94fd5c06c9c0" "18af0002df126540538262dfa3624dd31b8d94cd68be5bb025e68f65c5c26a5b" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "50ed796f0ee859cf42233a9066adfb761fb582d955058a81a22a3d8f6b50296b" "417a88b756ab12e722a583a142b63e13ba41e8cb53023bf1711611c905a46e0e" "f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "6e75ac3db222f3b294adac476342aa6a872aed5384905de6582a24fab7bbd773" "e59d42976c3f0401dd62d36d26dfe4bf37c1192d78cbe225a92b0f82ad19580f" default)))
 '(package-selected-packages
   (quote
    (magit expand-region flycheck rainbow-mode js2-mode multiple-cursors zenburn-theme yasnippet windata smartparens projectile neotree minimap memoize font-lock+ custom-colors-theme auto-complete atom-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'linum)
(defun linum-update-window-scale-fix (win)
  "fix linum for scaled text"
  (set-window-margins win
          (ceiling (* (if (boundp 'text-scale-mode-step)
                  (expt text-scale-mode-step
                    text-scale-mode-amount) 1)
              (if (car (window-margins))
                  (car (window-margins)) 1)
              ))))
(advice-add #'linum-update-window :after #'linum-update-window-scale-fix)
 

(load-theme 'custom-colors t)
(setq inhibit-startup-screen t)
