;;====================================================================================
;; Basic Setup 
;;====================================================================================

;; Removing tutorial page
(setq inhibit-startup-message t)

;; cursor types 
(setq-default cursor-type 'box)
;; (setq-default cursor-type 'bar)
;; (setq-default cursor-type 'hbar)

;; cursor line 
;; (global-hl-line-mode 1)

;; line number 
(global-linum-mode t)

;; selection 
(transient-mark-mode t)

;; whole selection 
;; (define-key global-map (kbd "C-a") 'mark-whole-buffer)

;; tab size 
(setq-default tab-width 2)

;; location view
(column-number-mode t)
(line-number-mode t)

;; Yes/NO - > y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; ringing removing 
(setq ring-bell-function 'ignore)

;; minibuffer histories
(savehist-mode 1)

;; window size 
(add-to-list 'default-frame-alist '(height . 100))
(add-to-list 'default-frame-alist '(width . 200))
(set-frame-position (selected-frame) 0 0)

;; blanket
(show-paren-mode 1)
(setq show-paren-delay 0)


;; font size
(set-face-font 'default "Monaco-13")

;;====================================================================================
;; Repositories package
;;====================================================================================

(require 'package)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;;====================================================================================
;; Basic setup of repositoeis
;;====================================================================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
	 [default default default italic underline success warning error])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (misterioso)))
 '(ecb-options-version "2.50")
 '(global-whitespace-mode t)
 '(package-selected-packages
	 (quote
		(git magit ecb ace-window swiper flycheck php-mode org-pdfview multi-web-mode matlab-mode company-anaconda)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-empty ((t (:foreground "firebrick" :background "SlateGray1"))))
 '(whitespace-hspace ((t (:foreground "lightgray" :background "LemonChiffon3"))))
 '(whitespace-indentation ((t (:foreground "firebrick" :background "beige"))))
 '(whitespace-line ((t (:foreground "black" :background "red"))))
 '(whitespace-newline ((t (:foreground "orange" :background "blue"))))
 '(whitespace-space ((t (:bold t :foreground "gray75"))))
 '(whitespace-space-after-tab ((t (:foreground "black" :background "green"))))
 '(whitespace-space-before-tab ((t (:foreground "black" :background "DarkOrange"))))
 '(whitespace-tab ((t (:foreground "blue" :background "white"))))
 '(whitespace-trailing ((t (:foreground "red" :background "yellow")))))

;;====================================================================================
;; Repositories package
;;====================================================================================

;; (add-to-list 'load-path "~/.emacs.d/packages/matlab-emacs")
;; (load-library "matlab.el")

(setq matlab-shell-command "/Applications/MATLAB_R2018b.app/bin/matlab")
(setq matlab-shell-command-switches (list "-nodesktop"))

;; comment 
(defun endless/comment-line-or-region (n)
  "Comment or uncomment current line and proceed to the next line.
With positive prefix, apply to N lines including current one.
With negative prefix, apply to -N lines above.
If region is active, apply to active region instead."
  (interactive "p")
  (if (use-region-p)
      (comment-or-uncomment-region
       (region-beginning) (region-end))
    (let ((range
           (list (line-beginning-position)
                 (goto-char (line-end-position n)))))
      (comment-or-uncomment-region
       (apply #'min range)
       (apply #'max range)))
    (forward-line 1)
    (back-to-indentation)))

;; Unbind the M-; key from `matlab-mode-map'
;; `with-eval-after-load' will work in emacs 24.4 and newer versions
(with-eval-after-load 'matlab
  (define-key matlab-mode-map (kbd "M-;") nil)) 

;; For emacs 24.3 and older versions use `eval-after-load' instead
;; of `with-eval-after-load'. Note that `eval-after-load' accepts
;; only a single quoted form.
;; (eval-after-load 'matlab
;;   '(define-key matlab-mode-map (kbd "M-;") nil)) 

;; Define the M-; binding globally
;; This binding will be effective in any major-mode that does not
;; have that major-mode-specific M-; binding
(global-set-key (kbd "M-;") #'endless/comment-line-or-region) 

;;====================================================================================
;; whitespace mode 
;;====================================================================================

(setq whitespace-display-mappings '(
  (space-mark   ?\     [?\u00B7]     [?.])
  (space-mark   ?\xA0  [?\u00A4]     [?_])
  (newline-mark ?\n    [?¶ ?\n])
  (tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t])
            ))

;; lines lines-tail newline trailing space-before-tab space-afte-tab empty
;; indentation-space indentation indentation-tab tabs spaces
(setq whitespace-style '(face space-mark tab-mark newline-mark) )

(setq whitespace-line-column 85)

;;====================================================================================
;; swiper mode
;;====================================================================================

;; (use-package swiper
;; :ensure try
;; :config
;; (progn
;; (ivy-mode 1)
;; (setq ivy-use-virtual-buffers t)
;; (global-set-key "\C-s" 'swiper)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "<f6>") 'ivy-resume)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> l") 'counsel-load-library)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
;; ))


;;====================================================================================
;; ace window
;;====================================================================================
(global-set-key (kbd "M-o") 'ace-window)


;; (defvar aw-dispatch-alist
;;   '((?x aw-delete-window "Delete Window")
;; 	(?m aw-swap-window "Swap Windows")
;; 	(?M aw-move-window "Move Window")
;; 	(?j aw-switch-buffer-in-window "Select Buffer")
;; 	(?n aw-flip-window)
;; 	(?u aw-switch-buffer-other-window "Switch Buffer Other Window")
;; 	(?c aw-split-window-fair "Split Fair Window")
;; 	(?v aw-split-window-vert "Split Vert Window")
;; 	(?b aw-split-window-horz "Split Horz Window")
;; 	(?o delete-other-windows "Delete Other Windows")
;; 	(?? aw-show-dispatch-help))
;;   "List of actions for `aw-dispatch-default'.")

(put 'scroll-left 'disabled nil)
