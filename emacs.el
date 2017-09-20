;;使用C-x C-e检测配置的正确性  
(global-linum-mode t);显示行号  
(setq column-number-mode t);显示列号  
(setq auto-image-file-mode t);让Emacs可以直接打开和显示图片  
(auto-compression-mode t);打开压缩文件时自动解压缩  
;(setq global-font-lock-mode t);进行语法加亮  
(setq x-select-enable-clipboard t);允许emacs和外部其他程序的粘贴  
(setq mouse-yank-at-point t);使用鼠标中键可以粘贴  
(set-scroll-bar-mode nil);;取消滚动栏  
(tool-bar-mode nil);取消工具栏  	
;;;;;;;;;;;;;;;;;;;;;;;;;;;; 显示时间设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上  
(setq display-time-24hr-format t);;时间使用24小时制  
(setq display-time-day-and-date t);;时间显示包括日期和具体时间  
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置  	
(setq display-time-interval 10);;时间的变化频率，单位多少来着？  
  
;;;;;;;;;;;;;;;;;;;;;;;;;;; 显示时间设置结束 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
(setq visible-bell t)  
;;关闭烦人的出错时的提示声  
(setq inhibit-startup-message t)  
;;关闭emacs启动时的画面  
  
;(setq font-lock-maximum-decoration t)  
;(setq font-lock-global-modes '(not shell-mode text-mode))  
;(setq font-lock-verbose t)  
;(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))  
;; 语法高亮。除 shell-mode 和 text-mode 之外的模式中使用语法高亮。  
  
(fset 'yes-or-no-p 'y-or-n-p)  
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。  
  
(ansi-color-for-comint-mode-on)  
;真正shell－mode乱码解决。  
  
(setq default-fill-column 80)  
;默认显示 80列就换行  
  
(setq default-fill-column 120)  
;;把 fill-column 设为 60. 这样的文字更好读  
  
(setq default-major-mode 'text-mode)  
(add-hook 'text-mode-hook 'turn-on-auto-fill)  
;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode  
  
(show-paren-mode t);显示括号匹配  
(setq show-paren-style 'parenthesis)  
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。  

(setq frame-title-format "emacs@%b")
;;显示buffer名称
(mouse-avoidance-mode 'animate)  
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。

(setq-default kill-whole-line t)
;; 在行首 C-k 时，同时删除该行。

(setq x-select-enable-clipboard t)
;;允许emacs和外部其他程序的粘贴

;;(define-key global-map [] 'set-mark-command)
(define-key global-map (kbd "C-x a") 'mark-whole-buffer)

(setq default-directory "D:/")
(setenv "PATH" "D:\\cygwin64\\bin\\;C:\\Windows\\system32;C:\\Windows\\;C:\\Windows\\System32\\Wbem\\;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files\\Git\\cmd\\;C:\\Program Files\\OpenSSH\\bin\\;D:\\program1\\putty\\App\\putty\\")
;(add-to-list 'exec-path "D:/Program Files/Git/bin/")
(add-to-list 'load-path "D:\\program1\\emacs\\plugin\\slime\\")
(setq inferior-lisp-program "D:\\program1\\sbcl\\sbcl.exe")
(require 'slime-autoloads)
(slime-setup '(slime-fancy))

(add-to-list 'load-path "D:\\program1\\emacs\\plugin\\acejump\\")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-;") 'ace-jump-mode)

;;(add-to-list 'load-path "D:/program1/emacs/plugin/org/lisp")
;;(add-to-list 'load-path "D:/program1/emacs/plugin/org/contrib")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(toggle-frame-maximized)
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|192.168.*\\|*.xyz.cn\\|*.91xinbei.cn\\)")
     ("http" . "192.168.16.189:8080")
     ("https" . "192.168.16.189:8080")))

(setq url-http-proxy-basic-auth-storage
    (list (list "192.168.16.189:8080"
                (cons "Input your LDAP UID !"
                      (base64-encode-string "wangyueyang:!QAZ2wsx")))))
(setq backup-directory-alist (quote (("." . "~/.backups"))))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

;; 设置项目基础路基
(defvar default-ecb-source-path (list '("d:/work/union" "Workspace")
								 '("~/" "~/")
								 '("/" "/")))
(add-hook 'ecb-basic-buffer-sync-hook
		  (lambda ()
			(when (functionp 'projectile-get-project-directories)
			  (when (projectile-project-p)
				(dolist (path-dir (projectile-get-project-directories))
				  (unless (member (list path-dir path-dir) default-ecb-source-path)
					(push (list path-dir path-dir) default-ecb-source-path)
					(customize-set-variable 'ecb-source-path default-ecb-source-path)
					))))))
