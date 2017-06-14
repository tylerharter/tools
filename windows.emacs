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

(windmove-default-keybindings)

    (defun unix-file ()
      "Change the current buffer to Latin 1 with Unix line-ends."
      (interactive)
      (set-buffer-file-coding-system 'iso-latin-1-unix t))

(global-set-key
 (kbd "C-x c")
 (lambda ()
   (interactive)
   (insert-file "~/git_co/tools/main.c")))

(global-set-key
 (kbd "C-x p")
 (lambda ()
   (interactive)
   (insert-file "~/git_co/tools/main.py")
   (save-buffer)
   (shell-command  
    (concat "chmod u+x " (buffer-file-name)))))

(global-set-key (kbd "M-m") 'set-mark-command)


(setq tab-width 4)
(setq default-tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

(setq tab-stop-list (number-sequence 4 200 4))

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(put 'narrow-to-region 'disabled nil)

(custom-set-variables
 '(require-final-newline nil))

(global-set-key (kbd "M-h") 'backward-kill-word)
