(global-set-key (kbd "M-q") 'execute-extended-command)
(global-set-key (kbd "C-q") 'Control-X-prefix)
(global-set-key [(control h)] 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (php-mode go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "M-'") 'fill-paragraph)

 ;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph
(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
        ;; This would override `fill-column' if it's an integer.
        (emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))
;; Handy key definition
(global-set-key (kbd "C-x '") 'unfill-paragraph)

(add-to-list 'auto-mode-alist '("\\.\\(sml\\|sig\\|ML\\)\\'" . sml-mode))

(windmove-default-keybindings)

    (defun unix-file ()
      "Change the current buffer to Latin 1 with Unix line-ends."
      (interactive)
      (set-buffer-file-coding-system 'iso-latin-1-unix t))

(global-set-key
 (kbd "C-x c")
 (lambda ()
   (interactive)
   (insert-file "~/main.c")))

(global-set-key
 (kbd "C-x j")
 (lambda ()
   (interactive)
   (insert-file "~/Main.java")))

(global-set-key
 (kbd "C-x p")
 (lambda ()
   (interactive)
   (insert-file "~/main.py")
   (save-buffer)
   (shell-command  
    (concat "chmod u+x " (buffer-file-name)))))

;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/magit")
;(require 'magit)

;(add-to-list 'load-path "/usr/local/share/emacs")
;(require 'pyimport)

(global-set-key (kbd "M-m") 'set-mark-command)


;(require 'package)
;(package-initialize)
;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(fset 'guitar
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("rwry" 0 "%d")) arg)))

(global-set-key (kbd "C-x g") 'guitar)

(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)

(global-set-key (kbd "C-x C-q") 'quoted-insert)

(defun swap-buffers-in-windows ()
  "Put the buffer from the selected window in next window, and vice versa"
  (interactive)
  (let* ((this (selected-window))
     (other (next-window))
     (this-buffer (window-buffer this))
     (other-buffer (window-buffer other)))
    (set-window-buffer other this-buffer)
    (set-window-buffer this other-buffer)
    )
  )
