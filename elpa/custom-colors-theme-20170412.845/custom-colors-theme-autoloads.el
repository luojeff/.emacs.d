(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))


(when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))
