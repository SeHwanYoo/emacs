(set-language-environment "Korean")
(prefer-coding-system 'utf-8)

(set-file-name-coding-system 'cp949-dos)

;------------------------------------------------------------------------------------------
;; Package repositories
;;------------------------------------------------------------------------------------------

(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/")
  t)  
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-dark+))
 '(custom-safe-themes
   '("76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" default))
 '(gnutls-algorithm-priority "normal:-vers-tls1.3")
 '(package-selected-packages
   '(doom-themes elpygen importmagic py-autopep8 py-yapf auto-complete magit pyenv-mode python-mode setup-cygwin cygwin-mount transpose-frame ipython-shell-send elpy smartparens duplicate-thing company-anaconda web-modeess helm-rg helm-projectile projectile ein jupyter pyvenv flycheck-pyflakes live-py-mode company-jedi jedi anaconda-mode swift-mode ace-window matlab-mode yasnippet swiper iedit highlight-indentation flycheck eyebrowse avy anzu))
 '(show-paren-mode t))

;;------------------------------------------------------------------------------------------
;; Basic
;;------------------------------------------------------------------------------------------

;; auto-fill-mode disable
(auto-fill-mode -1)

;; font size
;; (set-face-font 'default "Monaco-13")   

;; Removing tutorial page
(setq inhibit-startup-message t)

;; cursor types
(setq-default cursor-type 'box)
;; (setq-default cursor-type 'bar)
;; (setq-default cursor-type 'hbar)

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
;; (add-to-list 'default-frame-alist '(height . 100))
;; (add-to-list 'default-frame-alist '(width . 200))
;; (set-frame-position (selected-frame) 0 0)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;���� ���� ��ġ ���
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file     "~/_places.sav")

;;�ֱ� ���� ����
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 20) ; �ֱ� ���� ��� ��

;;GUI ȯ�濡�� �� ���� ����
(setq-default line-spacing 15)

;;������ �����Ǿ��� �� �ڵ����� �ٽ� �о���̵��� �ϴ� ����
(global-auto-revert-mode t)

;; blanket
(show-paren-mode 1)
(setq show-paren-delay 0)

;;���� ���� ��ġ ���
;; (require 'saveplace)
;; (setq-default save-place t)
;; (setq save-place-file     "~/_places.sav")

;;�ֱ� ���� ����
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 20) ; �ֱ� ���� ��� ��

;;GUI ȯ�濡�� �� ���� ����
(setq-default line-spacing 1)

;;������ �����Ǿ��� �� �ڵ����� �ٽ� �о���̵��� �ϴ� ����
(global-auto-revert-mode t)

;;������ �ѱ� �� 3���� ����.
(setq next-screen-context-lines 3)

;;ã�� ��ɿ��� ���̶���Ʈ ����
(setq search-highlight t)

;;�߶󳻱�, �ٿ��ֱ�, CTRL+C, V�� Ȱ��ȭ �����ش�. ������ ó�� ��밡���ϴ�.
;; (cua-mode)

;;�ֱ� �۾� ���� ��� ����
(global-set-key [f1] 'recentf-open-files)

;���� Ž���� Dired ��� �ѱ�
(global-set-key [f2] 'dired)

;;�� ���úκ� ���� ������Ű��
(setq-default transient-mark-mode t)

;; �� ��� ���� �ֱ�
(setq-default indent-tabs-mode nil)

(defun set-default-programming-style ()
  ;; ���� �Է½� �鿩����
  (local-set-key (kbd "<return>") 'newline-and-indent)

  ;; ��Ű �Է½� ���������Ǿ� ������ ���� �鿩����. ���������� ��Ű.
  (local-set-key (kbd "<tab>") 'indent-block)

  ;; �鿩���� �� �� ���� �ǹ��� �Է�
  (setq indent-tabs-mode t)

  ;; �� ������ 4
  (setq tab-width 4)

  ;; �ٹ�ȣ ǥ��
  (linum-mode 1)
  )

;; backup files ��ġ ����
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; �⺻ ���丮 ����
(setq default-directory "D:/") 

;; ���� ����
(global-set-key (kbd "<f10>") (lambda() (interactive)(find-file "~/.emacs")))

;; buffer font size 
(global-set-key (kbd "C-M-+") 'text-scale-increase)
(global-set-key (kbd "C-M--") 'text-scale-decrease)


;;===========================================================================
;; undo-tree 
;;===========================================================================

;; (require 'undo-tree)
;; (global-undo-tree-mode)

;; (eval-after-load "undo-tree"
;;   (lambda ()
;;     (define-key undo-tree-map (kbd "C-r") nil)
;;     (define-key undo-tree-map (kbd "C-?") nil)

;;     ;; C-? C-M-? C-/ Ű�� org-agenda ����� �����մϴ�
;;     (define-key undo-tree-map (kbd "C-?") 'org-agenda-list)
;;     (define-key undo-tree-map (kbd "C-M-?") 'org-agenda)
;;     (define-key undo-tree-map (kbd "C-/") 'org-todo-list)

;;     ;; C-_ Ű�� font ũ�⸦ Ư�� ũ��� �����ִ� �Լ� ����
;;     (define-key undo-tree-map (kbd "C-_") 'set-frame-125)

;;     ))


;;===========================================================================
;; yasnippet
;;===========================================================================

;; Package: yasnippet
;; ~/.emacs.d/elpa/yasnippet-.../snippets �� �ִ� ���ϵ��� ~/.emacs.d/snippets �� �־�� ���������� �����մϴ�
(require 'yasnippet)
(yas-global-mode t)
(setq warning-suppress-types nil)
;; yasnippet�� elisp �Լ��� ���� ��Ÿ���� ����� �����մϴ�
(add-to-list 'warning-suppress-types '(yasnippet backquote-change)) 


;;===========================================================================
;; anzu 
;;===========================================================================

;; PACKAGE: anzu
(require 'anzu)
(global-anzu-mode)

;; M-% Ű�� �ش� buffer���� Ư�� �ܾ �ٲߴϴ�
(global-set-key (kbd "M-] r") 'anzu-query-replace)
;; C-M-% Ű�� ����ǥ������ �̿��� �ܾ�ġȯ�� �մϴ�
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)


;; PACKAGE : flycheck
(require 'flycheck)

;; swiper
(require 'swiper)
(global-set-key (kbd "M-] s") 'swiper-all)

;; PACKAGE: avy
(require 'avy)
(global-set-key (kbd "M-] a w") 'avy-goto-word-1)
(global-set-key (kbd "M-] a c") 'avy-goto-char-2)
(global-set-key (kbd "M-] a l") 'avy-goto-line)

;; PACKGE: eyebrowse
(require 'eyebrowse)
(eyebrowse-mode t)

(require 'highlight-indentation)

;;------------------------------------------------------------------------------------------
;; ace window
;;------------------------------------------------------------------------------------------

;; Add ace-window hotkey.
(global-set-key (kbd "M-o") 'ace-window)

;; Set window resize hotkeys.

(global-set-key (kbd "S-C-<left>")  'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>")  'shrink-window)
(global-set-key (kbd "S-C-<down>")    'enlarge-window)



;;------------------------------------------------------------------------------------------
;; matlab
;;------------------------------------------------------------------------------------------

(setq matlab-shell-command "C:/Program Files/MATLAB/R2019b/matlabShell")
(setq matlab-shell-command-switches (list "-nodesktop"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'matlab-mode-hook 'turn-off-auto-fill)

;;====================================================================================
;; whitespace mode 
;;====================================================================================

;; (require 'whitespace-mode)
;; (add-hook 'after-init-hook 'whitespace-mode)
(global-whitespace-mode t)

(setq whitespace-display-mappings '(
  (space-mark   ?\     [?\u00B7]     [?.])
  (space-mark   ?\xA0  [?\u00A4]     [?_])
  (newline-mark ?\n    [?�� ?\n])
  (tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t])
            ))

;; lines lines-tail newline trailing space-before-tab space-afte-tab empty
;; indentation-space indentation indentation-tab tabs spaces
(setq whitespace-style '(face space-mark tab-mark newline-mark) )

(setq whitespace-line-column 85)

;;====================================================================================
;; Anaconda mode
;; ������: C-c C-p C-p C-p
;;====================================================================================

(add-hook 'python-mode-hook 'anaconda-mode)


(setq python-shell-interpreter "D:/Anaconda/envs/test_env/python.exe")

(use-package pyvenv
        :ensure t
        :init
        (setenv "test_env" "D:/Aanaconda/envs")
        (pyvenv-mode 1)
        (pyvenv-tracking-mode 1))

;; (pyvenv-activate (expand-file-name "~/anaconda/envs/py27")) 



;;====================================================================================
;; Bookmark
;;====================================================================================

;; ;;�� ��ũ ����
(global-set-key (kbd "C-M-b") 'bookmark-bmenu-list)

;; ;;�� ��ũ�� ���� �ϱ�
;; (global-set-key "C-b C-s" 'bookmark-set)

;;�� ��ũ�� ���� �ϱ� Alt + b
(global-set-key (kbd "C-M-s") 'bookmark-set)

;; �ϸ�ũ ���� Ctrl + Alt + b
(global-set-key (kbd "C-M-d") 'bookmark-delete)

;;�� ��ũ ���� Alt + v
(global-set-key (kbd "C-M-j") 'bookmark-jump)
;; (define-key cua--cua-keys-keymap (kbd "C-M-v") 'bookmark-jump) 
 

;;====================================================================================
;; Jupyter notebook
;; ������: ein:notebooklist-open (��, ������ terminal ���� jupyter notebook �� ������ ��) 
;;====================================================================================

(require 'ein)
(require 'ein-notebook)
;; (require 'ein-subpackages)              ;

;; (global-set-key (kbd "C-M-e") 'ein:notebook-open)
(global-set-key (kbd "C-M-1") 'ein:jupyter-server-stop)
(global-set-key (kbd "C-M-2") 'ein:jupyter-server-start)

(define-key ein:notebook-mode-map "\C-c\C-d"
            'ein:worksheet-delete-cell)

;;====================================================================================
;; company-mode
;;====================================================================================

(add-hook 'after-init-hook 'global-company-mode)

;;====================================================================================
;; projecttile & helm-projectile
;;====================================================================================

(require 'projectile)
(projectile-global-mode)

(require 'helm-projectile)
(global-set-key (kbd "M-] f f") 'helm-projectile)
(global-set-key (kbd "M-] f w") 'helm-projectile-grep)
;; (global-set-key (kbd "C-x r") 'helm-projectile-rg)

;; C-1 Ű�� ���� ���Ͽ��� ������ Ư�� �Լ��� ������ �̵��մϴ�
;; (global-set-key (kbd "C-1") 'helm-semantic)
                                        ;
;; C-2 Ű�� find file ������ �����ϴ��� �˻��մϴ�
;; (global-set-key (kbd "C-2") 'helm-find)

;; C-3 Ű�� find dir ������ �����ϴ��� �˻��մϴ�
;; (global-set-key (kbd "C-3") 'helm-projectile-find-dir)


;;====================================================================================
;; projecttile & helm-projectile
;;====================================================================================

;; PACKGE: eyebrowse
(require 'eyebrowse)
(eyebrowse-mode t)

(setq eyebrowse-new-workspace t)
(setq eyebrowse-wrap-around t)
(setq eyebrowse-switch-back-and-forth t)
(setq eyebrowse-new-workspace nil)
(setq eyebrowse-mode-line-style (quote always))

(use-package eyebrowse
  :diminish eyebrowse-mode
  :config (progn
            (define-key eyebrowse-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
            (define-key eyebrowse-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
            (define-key eyebrowse-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
            (define-key eyebrowse-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
            (eyebrowse-mode t)
            (setq eyebrowse-new-workspace t)))


;;====================================================================================
;; swiper mode
;;====================================================================================

;; (require 'swiper)
;; (global-set-key (kbd "S-C-s") 'swiper-all)


;;====================================================================================
;; iedit 
;;====================================================================================

;; (require 'iedit)
;; (eval-after-load "iedit"
;;    (lambda()
;;       (define-key iedit-mode-keymap (kbd "C-M-f") 'iedit-toggle-selection)
;;       ))

;; PACKAGE: iedit
(require 'iedit)
;; iedit mode�� ���۵ǰ� ����Ǵ� �ڵ�
(eval-after-load "iedit"
  (lambda()
    ;; iedit ��忡�� `Ű�� ���� ������ �մϴ� (default: M-;)
    (define-key iedit-mode-keymap (kbd "q") 'iedit-toggle-selection)
    (define-key iedit-mode-occurrence-keymap (kbd "q") 'iedit-toggle-selection)
    ))

;; Alt + [ Ű�� ���õ� �ܾ iedit �ϰ������մϴ�
(global-set-key (kbd "M-] i") 'iedit-mode)
;; ���� C-; �� iedit-mode�� Ű���ε� �Ǿ��ִ� ���� �����մϴ�
(global-set-key (kbd "M-] i") nil)

;;====================================================================================
;; Comment region
;;====================================================================================

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
;; tramp 
;;====================================================================================

;; ����
;; C-x C-f RET /ftp:skyer9@test.co.kr:
;; C-x C-f RET /ftp:skyer9@test.co.kr:���ϸ�
(require 'tramp)

;; �н����带 �����Ѵ�.(Emacs �� �����ϸ� ��������.)
(setq password-cache-expiry nil)

;;====================================================================================
;; web-mode
;;====================================================================================

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(use-package web-mode
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2))

;;====================================================================================
;; duplicate-things
;;====================================================================================

(require 'duplicate-thing)
(global-set-key (kbd "S-C-l c") 'duplicate-thing)

;;====================================================================================
;; smartparens
;;====================================================================================

(require 'smartparens)

;;====================================================================================
;; putty plugin 
;;====================================================================================

(add-to-list 'exec-path "C:/Users/user/AppData/Roaming/.emacs.d/plink.exe")

(when (eq system-type 'windows-nt)
  (when (executable-find "plink")
    (require 'tramp)
    (setq-default tramp-default-method "plink")))


;; =============================================================================
;; AngeFtp
;; =============================================================================


(defvar ange-ftp-ftp-program-name "C:/Users/user/AppData/Roaming/.emacs.d/my-exe/ftp.exe")

;; (defvar ange-ftp-windows-hosts '("u-startup.kr")
;;   "List of hosts running a Windows FTP server")

 

(defun ange-ftp-msdos-dirstyle-off ()
  "Toggles the dirstyle of the host if listed in the
  `ange-ftp-windows-hosts' variable. This function is intended to
  be called from inside the hook `ange-ftp-process-startup-hook'"
  (if (member host ange-ftp-windows-hosts)
    (let* ((result (ange-ftp-send-cmd host user '(quote "site dirstyle")))    ;; MSDOS style disabled by "site dirstyle" command
        (line (cdr result))
        (ok (car result))
        (msdos (string-match "200 .+off" line))))))

 

(add-hook 'ange-ftp-process-startup-hook 'ange-ftp-msdos-dirstyle-off)


 

;==============================================================================
;; CYGWIN SUPPORT
;==============================================================================


(defvar explicit-shell-file-name)

(let* ((cygwin-root "c:")
     (cygwin-bin (concat cygwin-root "/bin")))
  (when (and (eq 'windows-nt system-type)
     (file-readable-p cygwin-root))

  (setq exec-path (cons cygwin-bin exec-path))
  (setenv "PATH" (concat cygwin-bin ";" (getenv "PATH")))

  (setq shell-file-name "bash")
  (setenv "SHELL" shell-file-name)
  (setq explicit-shell-file-name shell-file-name)

  (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)))


;==============================================================================
;; CYGWIN SHELL
;==============================================================================


(add-hook 'shell-mode-hook 'n-shell-mode-hook)
(defun n-shell-mode-hook ()
  "12Jan2002 - sailor, shell mode customizations."
  (local-set-key '[up] 'comint-previous-input)
  (local-set-key '[down] 'comint-next-input)
  (setq comint-input-sender 'n-shell-simple-send))

(defun n-shell-simple-send (proc command)
  "17Jan02 - sailor. Various commands pre-processing before sending to shell."
  (cond
   ((string-match "^[ \t]*clear[ \t]*$" command)
     (comint-send-string proc "\n")
     (erase-buffer))
   ((string-match "^[ \t]*c[ \t]*$" command)
     (comint-send-string proc "\n")
     (erase-buffer))
   ;; Send other commands to the default handler.
   (t (comint-simple-send proc command))))

 


;==============================================================================
; emacs python 
;==============================================================================

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((python . t)))


;; =============================================================================
;; yasnippet
;; (�ʿ� : MELPA, use-package, yasnippet)
;; =============================================================================

(use-package yasnippet
  :ensure t)

(yas-global-mode 1)



;; =============================================================================
;; auto-complete
;; (�ʿ� : MELPA, use-package, auto-complete)
;; =============================================================================

(use-package auto-complete
  :ensure t)
(require 'auto-complete-config)

;; �ڵ��ϼ� Ȱ��ȭ
(global-auto-complete-mode t)

;; 3���� �Է½� �ڵ��ϼ� ����
(setq ac-auto-start 5)

(ac-config-default)

;; TAB Ű ������ �ڵ��ϼ� ����
(ac-set-trigger-key "C-<f8>")



;; =============================================================================
;; elpy
;; (�ʿ� : MELPA, use-package, elpy)
;; pip install jedi
;; pip install flake8
;; pip install importmagic
;; pip install autopep8
;; pip install yapf
;;
;; elpy �� �����ϰ� ����üũ�� �Ѵٰ� �����ϸ� �Ʒ��� ���� ������ ������ �� �ִ�.
;;
;; ~/.config/flake8 (������� ~/.flake8)
;;
;; [flake8]
;; # ignore = E226,E302,E41, E111, W191
;; ignore = W191
;; # max-line-length = 160
;; # exclude = tests/*
;; # max-complexity = 10
;; =============================================================================

(use-package elpy
  :ensure t)

;; elpy Ȱ��ȭ
(elpy-enable)

;; some bug??
(add-to-list 'python-shell-completion-native-disabled-interpreters "python")

(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width 4)
            (setq python-indent 4)))
