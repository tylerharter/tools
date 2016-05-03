(global-set-key (kbd "M-q") 'execute-extended-command)
(global-set-key (kbd "C-q") 'Control-X-prefix)
(global-set-key [(control h)] 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "M-'") 'fill-paragraph)

(add-to-list 'auto-mode-alist '("\\.\\(sml\\|sig\\|ML\\)\\'" . sml-mode))

(windmove-default-keybindings)

(global-set-key
 (kbd "C-x c")
 (lambda ()
   (interactive)
   (insert-file "~/main.c")))

(global-set-key
 (kbd "C-x p")
 (lambda ()
   (interactive)
   (insert-file "~/main.py")
   (save-buffer)
   (shell-command  
    (concat "chmod u+x " (buffer-file-name)))))

(add-to-list 'load-path "~/emacs/go-mode.el/")
(require 'go-mode-autoloads)

(setq js-indent-level 2)
