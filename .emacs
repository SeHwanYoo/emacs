;;====================================================================================
;; Global keys
;;====================================================================================

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; (global-set-key (kbd "S-C-r") 'find-grep-dired)

;;====================================================================================
;; Basic Setup 
;;====================================================================================

(setq 
 org-default-notes-file "/home/sehwanyoo/projects/dl_for_mss/contents.org"
 initial-buffer-choice  org-default-notes-file)

(global-auto-revert-mode)

;; (turn-off-auto-fill)
(auto-fill-mode -1)

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves.d/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; Removing tutorial page
(setq inhibit-startup-message t)

;; cursor types 
(setq-default cursor-type 'box)
;; (setq-default cursor-type 'bar)
;; (setq-default cursor-type 'hbar)

;; cursor line 
;; (global-hl-line-mode 1)
;; (set-face-background 'hl-line "#333333")

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
;; (set-face-font 'default "Monaco-13")

;;====================================================================================
;; Repositories package
;;====================================================================================

(require 'package)
(add-to-list 'package-archives'("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives'("melpa" . "http://melpa.org/packages/") t)

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
 '(matlab-shell-command-switches (quote ("-nodesktop -noslpash -nojvm")) t)
 '(package-selected-packages
	 (quote
		(helm-gtags company-jedi jedi-direx color-identifiers-mode pyenv-mode material-theme better-defaults flymake-python-pyflakes importmagic py-yapf py-autopep8 jedi elpy wgrep swiper ac-ispell ac-dcd pymacs ivy rw-hunspell company-anaconda auto-package-update nimbus-theme company-auctex use-package auctex-latexmk diff-hl yasnippet ac-math auto-complete magic-latex-buffer latex-pretty-symbols pdf-tools)))
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
;; matlab 
;;====================================================================================

;; (add-to-list 'load-path "~/.emacs.d/down_packages/matlab-emacs")   ;matlab.el path
;; (add-to-list 'load-path "/usr/bin/matlab")                 ; matlab path
;; (require 'matlab-load)
;; (autoload 'run-octave "octave-inf" nil t)                         ;special
;; (autoload 'matlab-mode "matlab" "Enter MATLAB mode." t)
;; (setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
;; (autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

(setq matlab-shell-command "/home/sehwanyoo/Matlab/bin/matlab")
(setq matlab-shell-command-switches (list "-nodesktop"))

(setq matlab-indent-function-body t)    ; if you want function bodies indented
(setq matlab-verify-on-save-flag nil)   ; turn off auto-verify on save
(defun my-matlab-mode-hook ()
  (setq fill-column 76))		; where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
(defun my-matlab-shell-mode-hook ()
  '())
(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)
(global-font-lock-mode t)
					;  To get hilit19 support try adding:
(require 'tlc)
(autoload 'tlc-mode "tlc" "tlc Editing Mode" t)
(add-to-list 'auto-mode-alist '("\\.tlc$" . tlc-mode))
(setq tlc-indent-function t)
(add-hook 'company-mode-hook 'company-mode)

;; (add-to-list 'load-path "~/.emacs.d/down_packages/matlab-emacs")
;; (load-library "matlab-load")

;; Replace path below to be where your matlab.el file is.
;; (add-to-list 'load-path "~/.emacs.d/down_packages/matlab-emacs")
;; (load-library "matlab-load")
;; (custom-set-variables
;;  '(matlab-shell-command-switches '("-nodesktop -nosplash")))
;; (add-hook 'matlab-mode-hook 'auto-complete-mode)
;; (setq auto-mode-alist
;; 		(cons
;; 		 '("\\.m$" . matlab-mode)
;; 		 auto-mode-alist))

;; (setq exec-path (append exec-path '("/usr/sehwanyoo/Matlab/bin/matlab")))


;; Enable CEDET feature support for MATLAB code. (Optional)
;; (matlab-cedet-setup)

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

(require 'swiper)
(global-set-key (kbd "C-f") 'swiper-all)


;;====================================================================================
;; ace window
;;====================================================================================
(global-set-key (kbd "M-o") 'ace-window)


;;====================================================================================
;; python with IPython
;;====================================================================================
;; (global-set-key (kbd "C-!") 'ein:notebooklist-login)

;; Ctrl + ^키로 jupyter notebook 서버를 실행합니다
(global-set-key (kbd "C-^") 'ein:jupyter-server-start)

;; Ctrl + 6키로 remote 접속을 위한 notebooklist-login 명령어를 설정합니다
(global-set-key (kbd "C-6") 'ein:notebooklist-login)

;; jupyter notebook을 킨 상태에서 브라우저가 자동으로 켜지지 않도록 설정합니다
(setq ein:jupyter-server-args (quote ("--no-browser")))
(setq ein:use-auto-complete t)

;; ein 모드가 실행되고 난 후 세팅에 관한 코드
(eval-after-load "ein"
  '(progn
     (ein:ipynb-mode)

     ;; ed: ein 단축키 해제
     (define-key ein:notebook-mode-map (kbd "C-c i") nil)
     (define-key ein:notebook-mode-map (kbd "H-i") nil)
     (define-key ein:notebook-mode-map (kbd "C-u") nil)
     (define-key ein:notebook-mode-map (kbd "C-x C-s") nil)
     (define-key ein:ipynb-mode-map (kbd "C-c C-o") nil)
     (define-key ein:ipynb-mode-map (kbd "C-c C-p") nil)

     ;; ed: ein 단축키 등록
     (define-key ein:notebook-mode-map (kbd "C-w") 'ein:notebook-save-notebook-command)
     (define-key ein:notebook-mode-map (kbd "C-c C-d") 'ein:worksheet-delete-cell)
     (define-key ein:notebook-mode-map (kbd "M-<return>") 'ein:worksheet-execute-cell-and-goto-next)
     ))

;;====================================================================================
;; LaTex mode
;;====================================================================================

(setq TeX-command-list
      (list (list "TeX" "tex \\nonstopmode\\input %t" 'TeX-run-TeX nil t)
            (list "LaTeX" "%l --interaction=nonstopmode %t" 'TeX-run-LaTeX nil t)
            (list "LaTeX PDF" "pdflatex --interaction=nonstopmode %t" 'TeX-run-LaTeX nil t)
            (list "LaTeX DVIPDFMx" "dvipdfmx %d" 'TeX-run-command t nil)
            (list "View" "%v" 'TeX-run-discard t nil)
            (list "View PS" "gsview32 %f" 'TeX-run-command t nil)
            (list "View PDF" "evince %s.pdf" 'TeX-run-command t nil)
            (list "DVIPS" "dvips %d -o %f" 'TeX-run-command t nil)
            (list "Print" "dvips %d -o %f " 'TeX-run-command t nil)
            (list "File" "dvips %d -o %f " 'TeX-run-command t nil)
            (list "BibTeX" "bibtex %s" 'TeX-run-BibTeX nil nil)
            (list "Index" "makeindex %s" 'TeX-run-command nil t)
            (list "Check" "lacheck %s" 'TeX-run-compile nil t)
            (list "Other" "" 'TeX-run-command t t)))
(setq TeX-auto-save t
      TeX-parse-self t)
;; LaTeX 컴파일 단축키
(add-hook
 'LaTeX-mode-hook
  (lambda ()
    (define-key LaTeX-mode-map [f7] 'do-PDFLaTeX)))
(setq LaTeX-verbatim-environments '("verbatim" "verbatim*" "Verbatim"))
(defun do-PDFLaTeX ()
  "PDFLaTeX the curent file."
  (interactive)
  (TeX-command "LaTeX PDF" 'TeX-master-file))

;;====================================================================================
;; ispell 
;;====================================================================================

(eval-after-load 'auto-complete
	'(ac-ispell-setup))
(add-hook 'text-mode 'ac-ispell-ac-setup)
(add-hook 'LaTeX-mode 'ac-ispell-ac-setup)

(define-minor-mode my:flyspell-mode
	"Enable flyspell-mode."
	:variable my:flyspell-mode
	(if my:flyspell-mode
			(progn
				(if (derived-mode-p 'prog-mode) (flyspell-prog-mode)
					(flyspell-mode))
				(if (called-interactively-p) (flyspell-buffer)))
		(flyspell-mode -1)))

(eval-after-load 'auto-complete
	'(ac-flyspell-workaround))

;;====================================================================================
;; LaTex mode
;;====================================================================================

(setq TeX-command-list
      (list (list "TeX" "tex \\nonstopmode\\input %t" 'TeX-run-TeX nil t)
            (list "LaTeX" "%l --interaction=nonstopmode %t" 'TeX-run-LaTeX nil t)
            (list "LaTeX PDF" "pdflatex --interaction=nonstopmode %t" 'TeX-run-LaTeX nil t)
            (list "LaTeX DVIPDFMx" "dvipdfmx %d" 'TeX-run-command t nil)
            (list "View" "%v" 'TeX-run-discard t nil)
            (list "View PS" "gsview32 %f" 'TeX-run-command t nil)
            (list "View PDF" "evince %s.pdf" 'TeX-run-command t nil)
            (list "DVIPS" "dvips %d -o %f" 'TeX-run-command t nil)
            (list "Print" "dvips %d -o %f " 'TeX-run-command t nil)
            (list "File" "dvips %d -o %f " 'TeX-run-command t nil)
            (list "BibTeX" "bibtex %s" 'TeX-run-BibTeX nil nil)
            (list "Index" "makeindex %s" 'TeX-run-command nil t)
            (list "Check" "lacheck %s" 'TeX-run-compile nil t)
            (list "Other" "" 'TeX-run-command t t)))
(setq TeX-auto-save t
      TeX-parse-self t)
;; LaTeX 컴파일 단축키
(add-hook
 'LaTeX-mode-hook
  (lambda ()
    (define-key LaTeX-mode-map [f7] 'do-PDFLaTeX)))
(setq LaTeX-verbatim-environments '("verbatim" "verbatim*" "Verbatim"))
(defun do-PDFLaTeX ()
  "PDFLaTeX the curent file."
  (interactive)
  (TeX-command "LaTeX PDF" 'TeX-master-file))

(global-set-key (kbd "<f5>") 'ispell-word)
;; (with-eval-after-load "ispell"
;;   (setq ispell-program-name "hunspell")
;;   (setq ispell-dictionary "en_GB,en_US-med")
;;   ;; ispell-set-spellchecker-params has to be called
;;   ;; before ispell-hunspell-add-multi-dic will work
;;   (ispell-set-spellchecker-params)
;;   (ispell-hunspell-add-multi-dic "en_GB,en_US-med"))
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word))
(global-set-key (kbd "M-<f5>") 'flyspell-check-next-highlighted-word)

(add-hook 'LaTeX-mode-hook 'flyspell-mode) ;start flyspell-mode
(setq ispell-dictionary "british")    ;set the default dictionary
(add-hook 'LaTeX-mode-hook 'ispell)   ;start ispell


;;====================================================================================
;; Eyebrowser
;;====================================================================;; ================

;; PACKGE: eyebrowse
(require 'eyebrowse)
(eyebrowse-mode t)

;; C + 1,2,3을 누를때마다 워크스테이션을 생성한다
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
;; fill-column-indicator
;;====================================================================================

;; (add-to-list 'load-path "~/.emacs.d/elpa/fill-column-indicator-20171209.1924")
;; (require 'fill-column-indicator)
;; (define-globalized-minor-mode
;;  global-fci-mode fci-mode (lambda () (fci-mode 1)))
;; (global-fci-mode t)


;;====================================================================================
;; auto-complete
;;====================================================================================

;; (add-to-list 'load-path "~/.emacs.d/elpa/auto-compile-20181230.2216")
;; (require 'auto-complete)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (require 'auto-complete-config)
;; (ac-config-default)
;; (global-auto-complete-mode t)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)                 ; optional


;;====================================================================================
;; iedit 
;;====================================================================================

;; (require 'iedit)
;; (eval-after-load "iedit"
;; 	(lambda()
;; 		(define-key iedit-mode-keymap (kbd "C-M-f") 'iedit-toggle-selection)
;; 		))

;; PACKAGE: iedit
(require 'iedit)
;; iedit mode가 시작되고 실행되는 코드
(eval-after-load "iedit"
  (lambda()
    ;; iedit 모드에서 `키로 선택 해제를 합니다 (default: M-;)
    (define-key iedit-mode-keymap (kbd "q") 'iedit-toggle-selection)
    (define-key iedit-mode-occurrence-keymap (kbd "q") 'iedit-toggle-selection)
    ))

;; Alt + [ 키로 선택된 단어를 iedit 일괄편집합니다
(global-set-key (kbd "C-M-f") 'iedit-mode)
;; 원래 C-; 가 iedit-mode로 키바인딩 되어있는 것을 해제합니다
(global-set-key (kbd "C-;") nil)


;;====================================================================================
;; wgrep 
;;====================================================================================

;; PACKAGE: wgrep
(require 'wgrep)

;;====================================================================================
;; projectile 
;;====================================================================================

(projectile-mode +1)
(projectile-global-mode)
;; (setq projectile-keymap-prefix (kbd "C-c C-p"))
(define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c d") 'projectile-find-dir)
(define-key projectile-mode-map (kbd "C-c s") 'projectile-switch-project)
(define-key projectile-mode-map (kbd "C-c f") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c g") 'projectile-grep)

(require 'helm-projectile)
(global-set-key (kbd "C-x p") 'helm-projectile)






;; init.el --- Emacs configuration

;; Set OSX function key as Meta


;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)
(add-to-list 'package-archives                                                                                                        
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))   
(add-to-list 'package-archives
       '("melpa" . "https://melpa.org/packages/") t)

;; activate all packages
(package-initialize)

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; define list of packages to install
(defvar myPackages
  '(better-defaults
    material-theme
    exec-path-from-shell
    elpy))

;; install all packages in list
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; Use shell's $PATH
(exec-path-from-shell-copy-env "PATH")

;; init.el ends here


;;====================================================================================
;; jedi
;;====================================================================================

;; (defun company-jedi-setup ()
;;   (add-to-list 'company-backends 'company-jedi))
;; (add-hook 'python-mode-hook 'company-jedi-setup)

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:setup-keys t)
;; (setq jedi:complete-on-dot t)


;; (setq jedi-custom-file (expand-file-name "jedi-custom.el" user-emacs-directory))
;; (when (file-exists-p jedi-custom-file)
;;   (load jedi-custom-file))


;; ;;====================================================================================
;; ;; py-autiopep
;; ;;====================================================================================
;; (require 'py-autopep8)
;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; (defun company-jedi-hook ()
;;   (add-to-list 'company-backends 'company-jedi))
;; (add-hook 'python-mode-hook 'company-jedi-hook)

;; (defun shell-compile ()
;;       (interactive)
;;       (shell-command (concat "python " (buffer-file-name)))
;;       (if (<= (* 2 (window-height)) (frame-height))
;;           (enlarge-window 20)
;;         (/ (frame-height) 2)))
;;     (add-hook 'python-mode-hook
;;               '(lambda ()
;;                  (define-key (kbd "C-c C-c") 'shell-compile python-mode-map)))

(add-hook 'python-mode-hook 'helm-gtags-mode)
