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
 '(ansi-color-names-vector
   ["#323f4e" "#f48fb1" "#53e2ae" "#f1fa8c" "#92b6f4" "#BD99FF" "#79e6f3" "#f8f8f2"])
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-dark+))
 '(custom-safe-themes
   '("8f5a7a9a3c510ef9cbb88e600c0b4c53cdcdb502cfe3eb50040b7e13c6f4e78e" "e27556a94bd02099248b888555a6458d897e8a7919fd64278d1f1e8784448941" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "cae81b048b8bccb7308cdcb4a91e085b3c959401e74a0f125e7c5b173b916bf9" "f94110b35f558e4c015b2c680f150bf8a19799d775f8352c957d9d1054b0a210" "5379937b99998e0510bd37ae072c7f57e26da7a11e9fb7bced8b94ccc766c804" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "4f01c1df1d203787560a67c1b295423174fd49934deb5e6789abd1e61dba9552" "0685ffa6c9f1324721659a9cd5a8931f4bb64efae9ce43a3dba3801e9412b4d8" "ff3c57a5049010a76de8949ddb629d29e2ced42b06098e046def291989a4104a" "56d10d2b60685d112dd54f4ba68a173c102eacc2a6048d417998249085383da1" "4a8d4375d90a7051115db94ed40e9abb2c0766e80e228ecad60e06b3b397acab" "ca70827910547eb99368db50ac94556bbd194b7e8311cfbdbdcad8da65e803be" "e3c64e88fec56f86b49dcdc5a831e96782baf14b09397d4057156b17062a8848" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" default))
 '(ein:output-area-inlined-images t)
 '(fci-rule-color "#364455")
 '(gnutls-algorithm-priority "normal:-vers-tls1.3")
 '(jdee-db-active-breakpoint-face-colors (cons "#181e26" "#87DFEB"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#181e26" "#53e2ae"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#181e26" "#3d4c5f"))
 '(objed-cursor-color "#f48fb1")
 '(package-selected-packages
   '(outshine helm-lsp lsp-ui which-key lsp-python-ms lsp-mode pdf-view-restore wgrep rtags-xref xref dumb-jump dap-mode launch launch-mode undo-tree doom-themes elpygen importmagic py-autopep8 py-yapf auto-complete magit pyenv-mode python-mode setup-cygwin cygwin-mount transpose-frame ipython-shell-send elpy smartparens duplicate-thing company-anaconda web-modeess helm-rg helm-projectile projectile ein jupyter pyvenv flycheck-pyflakes live-py-mode company-jedi jedi anaconda-mode swift-mode ace-window matlab-mode yasnippet swiper iedit highlight-indentation flycheck eyebrowse avy anzu))
 '(pdf-view-midnight-colors (cons "#f8f8f2" "#323f4e"))
 '(rustic-ansi-faces
   ["#323f4e" "#f48fb1" "#53e2ae" "#f1fa8c" "#92b6f4" "#BD99FF" "#79e6f3" "#f8f8f2"])
 '(show-paren-mode t)
 '(vc-annotate-background "#323f4e")
 '(vc-annotate-color-map
   (list
    (cons 20 "#53e2ae")
    (cons 40 "#87eaa2")
    (cons 60 "#bcf297")
    (cons 80 "#f1fa8c")
    (cons 100 "#f1dc83")
    (cons 120 "#f1bf7a")
    (cons 140 "#f2a272")
    (cons 160 "#e09fa1")
    (cons 180 "#ce9cd0")
    (cons 200 "#BD99FF")
    (cons 220 "#cf95e5")
    (cons 240 "#e192cb")
    (cons 260 "#f48fb1")
    (cons 280 "#c67e9c")
    (cons 300 "#986d88")
    (cons 320 "#6a5c73")
    (cons 340 "#364455")
    (cons 360 "#364455")))
 '(vc-annotate-very-old-color nil))

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
(setq linum-format "%05d") 

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
(global-set-key (kbd"M-] f r") 'recentf-open-files)

;파일 탐색기 Dired 모드 켜기
;; (global-set-key "M-] f d" -'dired)

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
(global-set-key (kbd "M-] s u") 'text-scale-increase)
(global-set-key (kbd "M-] s d") 'text-scale-decrease)


(require 'transpose-frame)
(global-set-key (kbd "M-] t f") 'transpose-frame)

(global-set-key (kbd "M-] r m") 'rectangle-mark-mode)
(global-set-key (kbd "M-] r i") 'string-rectangle)



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
;; (require 'anzu)
;; (global-anzu-mode)

;; M-% 키로 해당 buffer에서 특정 단어를 바꿉니다
;; (global-set-key (kbd "M-%") 'anzu-query-replace)
;; ;; C-M-% 키로 정규표현식을 이용한 단어치환을 합니다
;; (global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)


;; PACKAGE : flycheck
(require 'flycheck)

;; swiper
(require 'swiper)
(global-set-key (kbd "M-] s s") 'swiper)
(global-set-key (kbd "M-] s a") 'swiper-all)

;; ;; PACKAGE: avy
(require 'avy)
(global-set-key (kbd "M-] a w") 'avy-goto-word-1)
(global-set-key (kbd "M-] a c") 'avy-goto-char-2)
;; (global-set-key (kbd "M-] a l") 'avy-goto-line)


;; PACKGE: eyebrowse
(require 'eyebrowse)
(eyebrowse-mode t)

(require 'highlight-indentation)

;; PACKAGE: iedit
(require 'iedit)
;; iedit mode가 시작되고 실행되는 코드
(eval-after-load "iedit"
  (lambda()
    ;; iedit 모드에서 `키로 선택 해제를 합니다 (default: M-;)
    (define-key iedit-mode-keymap (kbd "q") 'iedit-istoggle-selection)
    (define-key iedit-mode-occurrence-keymap (kbd "q") 'iedit-toggle-selection)
    ))

;; Alt + [ 키로 선택된 단어를 iedit 일괄편집합니다
(global-set-key (kbd "M-] i") 'iedit-mode)
;; 원래 C-; 가 iedit-mode로 키바인딩 되어있는 것을 해제합니다
;; (global-set-key (kbd "C-;") nil)



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

;; (setq matlab-shell-command "C:/Program Files/MATLAB/R2019b/matlabShell")
;; (setq matlab-shell-command-switches (list "-nodesktop"))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; (add-hook 'matlab-mode-hook 'turn-off-auto-fill)

;;====================================================================================
;; whitespace mode 
;;====================================================================================

;; (require 'whitespace-mode)
;; (add-hook 'after-init-hook 'whitespace-mode)
(global-whitespace-mode t)

;; make whitespace-mode use just basic coloring
;;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
;; (setq whitespace-display-mappings
;;   ;; all numbers are Unicode codepoint in decimal. ⁖ (insert-char 182 1)
;;   '(
;;     (space-mark 32 [183] [46]) ; 32 SPACE 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
;;     (newline-mark 10 [182 10]) ; 10 LINE FEED
;;     (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
;;     ))

;; (setq whitespace-display-mappings '(
;;   (space-mark   ?\     [?\u00B7]     [?.])
;;   (space-mark   ?\xA0  [?\u00A4]     [?_])
;;   (newline-mark ?\n    [?¶ ?\n])
;;   (tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t])
;;             ))

;; (setq whitespace-display-mappings
;;   '(
;;     (space-mark 32 [183] [46]) ; 32 SPACE 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
;;     (newline-mark 10 [182 10]) ; 10 LINE FEED
;;     (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
;;     ))


;; lines lines-tail newline trailing space-before-tab space-afte-tab empty
;; indentation-space indentation indentation-tab tabs spaces
;; (setq whitespace-style '(face space-mark tab-mark newline-mark) )
;; (setq whitespace-line-column 85)
;; (setq whitespace-space-regexp "^\\( \\{4,\\}\\)")
;; make whitespace-mode use just basic coloring
;;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))


;;====================================================================================
;; Anaconda mode
;; 실행방법: C-c C-p C-p C-p
;;====================================================================================

;; (add-hook 'python-mode-hook 'n-python-mode-hook)
;; (defun n-python-mode-hook ()
;;           (local-set-key (kbd "F5") (kbd "C-u C-c C-c")))
          ;; (global-set-key (kbd "M-] p d") (kbd "C-c C-d")))

;;====================================================================================
;; Bookmark
;;====================================================================================

;; ;;북 마크 열기
(global-set-key (kbd "M-] b o") 'bookmark-bmenu-list)
(global-set-key (kbd "M-] b s") 'bookmark-set)
(global-set-key (kbd "M-] b d") 'bookmark-delete)
(global-set-key (kbd "M-] b j") 'bookmark-jump)
 

;;====================================================================================
;; Jupyter notebook
;; 실행방법: ein:notebooklist-open (단, 이전에 terminal 에서 jupyter notebook 을 수행한 후) 
;;====================================================================================

(require 'ein)
(eyebrowse-mode t)
;; (require 'ein-notebook)
;; (require 'ein-subpackages)              ;

(setq ein:use-auto-complete t)
(setq ein:complete-on-dot t)
(setq ein:completion-backend 'ein:use-company-backend)
(setq ein:use-auto-complete-superpack nil)
(setq ein:use-smartrep nil)


(global-set-key (kbd "M-] j s") 'ein:jupyter-server-start)
(global-set-key (kbd "M-] j t") 'ein:jupyter-server-stop)



;;====================================================================================
;; company-mode
;;====================================================================================

(add-hook 'after-init-hook 'global-company-mode)

;;====================================================================================
;; projecttile & helm-projectile
;;====================================================================================

(require 'projectile)
(projectile-global-mode)

(setq projectile-switch-project-action 'projectile-dired)

(require 'helm-projectile)
(global-set-key (kbd "M-] f f") 'helm-projectile)
(global-set-key (kbd "M-] f w") 'helm-projectile-grep)


(global-set-key (kbd "M-] c l") 'helm-show-kill-ring)


;;====================================================================================
;; eyebrowse
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
(global-set-key (kbd "M-] l c") 'duplicate-thing)

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
            (setq python-indent 4))
            (local-set-key (kbd "<F5>") (kbd "C-u C-c C-c")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 120 :width normal))))
 '(whitespace-space ((t (:foreground "#4b474c")))))

;; (setq
;;  python-shell-interpreter "ipython"
;;  python-shell-interpreter-args "--colors=Linux --profile=default"
;;  python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;;  python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
;;  python-shell-completion-setup-code
;;  "from IPython.core.completerlib import module_completion"
;;  python-shell-completion-module-string-code
;;  "';'.join(module_completion('''%s'''))\n"
;;  python-shell-completion-string-code
;;  "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)
 
; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)

(setq elpy-shell-echo-input nil)

(setq python-indent-guess-indent-offset t)  
(setq python-indent-guess-indent-offset-verbose nil)

;; =============================================================================
;; ROS xml mode
;; =============================================================================

; roslaunch highlighting
(add-to-list 'auto-mode-alist '("\\.launch$" . xml-mode))



(add-hook 'dap-stopped-hook
          (lambda (arg) (call-interactively #'dap-hydra)))


;; =============================================================================
;; magit
;; =============================================================================


(require 'magit)

;; (필요 : https://git-scm.com/)
(when (eq system-type 'windows-nt)
  (add-to-list 'exec-path "D:/Git/bin/")
  (setenv "PATH" (concat "D:/Git/bin/" ";" (getenv "PATH")))
  (setq magit-git-executable "D:/Git/bin/git.exe"))

;; 아래 한줄을 설정파일에 추가하고, 편집할 파일을 UTF8 로 인코딩하는게 100배 편하다.
;;
;; (prefer-coding-system 'utf-8)
;;
;; 그게 안될때는 아래 설정으로 대처한다.
(add-to-list 'process-coding-system-alist '("git" utf-8 . utf-8))
(add-hook 'git-commit-mode-hook
          '(lambda ()
             (set-buffer-file-coding-system 'utf-8)))
(add-hook 'magit-diff-mode-hook
          '(lambda ()
             (make-local-variable 'process-coding-system-alist)
             (setq process-coding-system-alist (remove '("git" utf-8 . utf-8) process-coding-system-alist))))

(add-hook 'dired-mode-hook
          (lambda ()
            (define-key dired-mode-map (kbd "M-] m s") 'magit-status)
            (define-key dired-mode-map (kbd "M-] m l") 'magit-log)
            (define-key dired-mode-map (kbd "M-] m p") 'magit-push)
            (define-key dired-mode-map (kbd "M-] m u") 'magit-pull)))

(eval-after-load 'magit
  '(progn
     ;; C-u C-x = 를 입력하면 커서 위치의 face 를 알아낼 수 있다.
     (set-face-foreground 'magit-diff-added "black")
     (set-face-foreground 'magit-diff-added-highlight "black")
     (set-face-background 'magit-diff-added-highlight (face-attribute 'magit-diff-added :background))
     (set-face-foreground 'magit-diff-removed "black")
     (set-face-foreground 'magit-diff-removed-highlight "black")
     (set-face-background 'magit-diff-removed-highlight (face-attribute 'magit-diff-removed :background))
     (set-face-foreground 'magit-diff-context "black")
     (set-face-background 'magit-diff-context "white")
     (set-face-foreground 'magit-diff-context-highlight "black")
     (set-face-background 'magit-diff-context-highlight "white")
     (set-face-foreground 'magit-section-highlight "black")
     (set-face-background 'magit-section-highlight "DarkSeaGreen2")
     (set-face-background 'magit-diff-hunk-heading "gray92")
     (set-face-background 'magit-diff-hunk-heading-highlight "gray92")
     (set-face-foreground 'magit-hash "firebrick")))

(setq magit-diff-refine-hunk 'all)

;; 공백문자 차이 표시
(setq smerge-refine-ignore-whitespace nil)
(add-to-list 'xref-backend-functions 'dumb-jump-xref-activate t)


;==============================================================================
;; cc mode
;==============================================================================

(require 'cc-mode)
(setq c-default-style "stroustrup") 

;; 들여쓰기
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

 

(add-hook 'c-mode-common-hook
  (lambda ()
    (local-set-key [f5] 'recompile)
    (local-set-key [C-f5] 'compile)
    (local-set-key (kbd "<tab>") 'indent-block)
    (setq indent-tabs-mode t)
    (setq tab-width 4)
    ))


(setq auto-mode-alist
  (append
    '(("\\.C$"    . c++-mode)
      ("\\.H$"    . c++-mode)
      ("\\.cc$"   . c++-mode)
      ("\\.cpp$"  . c++-mode)
      ("\\.hh$"   . c++-mode)
      ("\\.c$"    . c-mode)
      ("\\.h$"    . c-mode)
      ("\\.m$"    . objc-mode)
      ("\\.java$" . java-mode)
     ) auto-mode-alist))


;==============================================================================
;; treeemacs
;==============================================================================

(global-set-key (kbd "M-] m t") 'treemacs)



;==============================================================================
;; lsp_mode
;==============================================================================

(require 'lsp-mode)
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (python-mode . lsp)
         (cc-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;; (use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;; (use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))

(setf (lsp-session-folders-blacklist (lsp-session)) nil)
(lsp--persist-session (lsp-session))



;==============================================================================
;; outline 
;==============================================================================

;; Require packages for following code
;; (require 'dash)
;; (require 'outshine)

;; ;; Required for outshine
;; (add-hook 'outline-minor-mode-hook 'outshine-hook-function)

;; ;; Enables outline-minor-mode for *ALL* programming buffers
;; (add-hook 'prog-mode-hook 'outline-minor-mode)


;; ;; Narrowing now works within the headline rather than requiring to be on it
;; (advice-add 'outshine-narrow-to-subtree :before
;;             (lambda (&rest args) (unless (outline-on-heading-p t)
;;                                    (outline-previous-visible-heading 1))))

;; (spacemacs/set-leader-keys
;;   ;; Narrowing
;;   "nn" 'outshine-narrow-to-subtree
;;   "nw" 'widen

;;   ;; Structural edits
;;   "nj" 'outline-move-subtree-down
;;   "nk" 'outline-move-subtree-up
;;   "nh" 'outline-promote
;;   "nl" 'outline-demote)

;; (let ((kmap outline-minor-mode-map))
;;   (define-key kmap (kbd "M-RET") 'outshine-insert-heading)
;;   (define-key kmap (kbd "<backtab>") 'outshine-cycle-buffer)

;;   ;; Evil outline navigation keybindings
;;   (evil-define-key '(normal visual motion) kmap
;;     "gh" 'outline-up-heading
;;     "gj" 'outline-forward-same-level
;;     "gk" 'outline-backward-same-level
;;     "gl" 'outline-next-visible-heading
;;     "gu" 'outline-previous-visible-heading))
