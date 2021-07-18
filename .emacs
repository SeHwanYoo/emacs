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

;;파일 편집 위치 기억
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file     "~/_places.sav")

;;최근 파일 접근
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 20) ; 최근 파일 목록 수

;;GUI 환경에서 줄 간격 조절
(setq-default line-spacing 15)

;;파일이 수정되었을 때 자동으로 다시 읽어들이도록 하는 설정
(global-auto-revert-mode t)

;; blanket
(show-paren-mode 1)
(setq show-paren-delay 0)

;;파일 편집 위치 기억
;; (require 'saveplace)
;; (setq-default save-place t)
;; (setq save-place-file     "~/_places.sav")

;;최근 파일 접근
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 20) ; 최근 파일 목록 수

;;GUI 환경에서 줄 간격 조절
(setq-default line-spacing 1)

;;파일이 수정되었을 때 자동으로 다시 읽어들이도록 하는 설정
(global-auto-revert-mode t)

;;페이지 넘길 때 3줄은 포함.
(setq next-screen-context-lines 3)

;;찾기 기능에서 하이라이트 설정
(setq search-highlight t)

;;잘라내기, 붙여넣기, CTRL+C, V를 활성화 시켜준다. 윈도우 처럼 사용가능하다.
;; (cua-mode)

;;최근 작업 파일 목록 열기
(global-set-key [f1] 'recentf-open-files)

;파일 탐색기 Dired 모드 켜기
(global-set-key [f2] 'dired)

;;블럭 선택부분 색상 반전시키기
(setq-default transient-mark-mode t)

;; 탭 대신 공백 넣기
(setq-default indent-tabs-mode nil)

(defun set-default-programming-style ()
  ;; 엔터 입력시 들여쓰기
  (local-set-key (kbd "<return>") 'newline-and-indent)

  ;; 탭키 입력시 영역지정되어 있으면 영역 들여쓰기. 영역없으면 탭키.
  (local-set-key (kbd "<tab>") 'indent-block)

  ;; 들여쓰기 할 때 실제 탭문자 입력
  (setq indent-tabs-mode t)

  ;; 탭 사이즈 4
  (setq tab-width 4)

  ;; 줄번호 표시
  (linum-mode 1)
  )

;; backup files 위치 선정
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; 기본 디렉토리 변경
(setq default-directory "D:/") 

;; 설정 파일
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

;;     ;; C-? C-M-? C-/ 키로 org-agenda 명령을 수행합니다
;;     (define-key undo-tree-map (kbd "C-?") 'org-agenda-list)
;;     (define-key undo-tree-map (kbd "C-M-?") 'org-agenda)
;;     (define-key undo-tree-map (kbd "C-/") 'org-todo-list)

;;     ;; C-_ 키로 font 크기를 특정 크기로 맞춰주는 함수 설정
;;     (define-key undo-tree-map (kbd "C-_") 'set-frame-125)

;;     ))


;;===========================================================================
;; yasnippet
;;===========================================================================

;; Package: yasnippet
;; ~/.emacs.d/elpa/yasnippet-.../snippets 에 있는 파일들을 ~/.emacs.d/snippets 에 넣어야 정상적으로 동작합니다
(require 'yasnippet)
(yas-global-mode t)
(setq warning-suppress-types nil)
;; yasnippet에 elisp 함수를 쓰면 나타나는 경고문을 무시합니다
(add-to-list 'warning-suppress-types '(yasnippet backquote-change)) 


;;===========================================================================
;; anzu 
;;===========================================================================

;; PACKAGE: anzu
(require 'anzu)
(global-anzu-mode)

;; M-% 키로 해당 buffer에서 특정 단어를 바꿉니다
(global-set-key (kbd "M-] r") 'anzu-query-replace)
;; C-M-% 키로 정규표현식을 이용한 단어치환을 합니다
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
  (newline-mark ?\n    [?¶ ?\n])
  (tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t])
            ))

;; lines lines-tail newline trailing space-before-tab space-afte-tab empty
;; indentation-space indentation indentation-tab tabs spaces
(setq whitespace-style '(face space-mark tab-mark newline-mark) )

(setq whitespace-line-column 85)

;;====================================================================================
;; Anaconda mode
;; 실행방법: C-c C-p C-p C-p
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

;; ;;북 마크 열기
(global-set-key (kbd "C-M-b") 'bookmark-bmenu-list)

;; ;;북 마크에 저장 하기
;; (global-set-key "C-b C-s" 'bookmark-set)

;;북 마크에 저장 하기 Alt + b
(global-set-key (kbd "C-M-s") 'bookmark-set)

;; 북마크 삭제 Ctrl + Alt + b
(global-set-key (kbd "C-M-d") 'bookmark-delete)

;;북 마크 열기 Alt + v
(global-set-key (kbd "C-M-j") 'bookmark-jump)
;; (define-key cua--cua-keys-keymap (kbd "C-M-v") 'bookmark-jump) 
 

;;====================================================================================
;; Jupyter notebook
;; 실행방법: ein:notebooklist-open (단, 이전에 terminal 에서 jupyter notebook 을 수행한 후) 
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

;; C-1 키로 현재 파일에서 빠르게 특정 함수나 변수로 이동합니다
;; (global-set-key (kbd "C-1") 'helm-semantic)
                                        ;
;; C-2 키로 find file 파일이 존재하는지 검색합니다
;; (global-set-key (kbd "C-2") 'helm-find)

;; C-3 키로 find dir 폴더가 존재하는지 검색합니다
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
;; iedit mode가 시작되고 실행되는 코드
(eval-after-load "iedit"
  (lambda()
    ;; iedit 모드에서 `키로 선택 해제를 합니다 (default: M-;)
    (define-key iedit-mode-keymap (kbd "q") 'iedit-toggle-selection)
    (define-key iedit-mode-occurrence-keymap (kbd "q") 'iedit-toggle-selection)
    ))

;; Alt + [ 키로 선택된 단어를 iedit 일괄편집합니다
(global-set-key (kbd "M-] i") 'iedit-mode)
;; 원래 C-; 가 iedit-mode로 키바인딩 되어있는 것을 해제합니다
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

;; 사용법
;; C-x C-f RET /ftp:skyer9@test.co.kr:
;; C-x C-f RET /ftp:skyer9@test.co.kr:파일명
(require 'tramp)

;; 패스워드를 저장한다.(Emacs 를 종료하면 지워진다.)
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
;; (필요 : MELPA, use-package, yasnippet)
;; =============================================================================

(use-package yasnippet
  :ensure t)

(yas-global-mode 1)



;; =============================================================================
;; auto-complete
;; (필요 : MELPA, use-package, auto-complete)
;; =============================================================================

(use-package auto-complete
  :ensure t)
(require 'auto-complete-config)

;; 자동완성 활성화
(global-auto-complete-mode t)

;; 3글자 입력시 자동완성 시작
(setq ac-auto-start 5)

(ac-config-default)

;; TAB 키 누르면 자동완성 시작
(ac-set-trigger-key "C-<f8>")



;; =============================================================================
;; elpy
;; (필요 : MELPA, use-package, elpy)
;; pip install jedi
;; pip install flake8
;; pip install importmagic
;; pip install autopep8
;; pip install yapf
;;
;; elpy 가 과도하게 문법체크를 한다고 생각하면 아래와 같이 설정을 변경할 수 있다.
;;
;; ~/.config/flake8 (윈도우는 ~/.flake8)
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

;; elpy 활성화
(elpy-enable)

;; some bug??
(add-to-list 'python-shell-completion-native-disabled-interpreters "python")

(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width 4)
            (setq python-indent 4)))
