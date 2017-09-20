;;ʹ��C-x C-e������õ���ȷ��  
(global-linum-mode t);��ʾ�к�  
(setq column-number-mode t);��ʾ�к�  
(setq auto-image-file-mode t);��Emacs����ֱ�Ӵ򿪺���ʾͼƬ  
(auto-compression-mode t);��ѹ���ļ�ʱ�Զ���ѹ��  
;(setq global-font-lock-mode t);�����﷨����  
(setq x-select-enable-clipboard t);����emacs���ⲿ���������ճ��  
(setq mouse-yank-at-point t);ʹ������м�����ճ��  
(set-scroll-bar-mode nil);;ȡ��������  
(tool-bar-mode nil);ȡ��������  	
;;;;;;;;;;;;;;;;;;;;;;;;;;;; ��ʾʱ������ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
(display-time-mode 1);;����ʱ����ʾ���ã���minibuffer������Ǹ�����  
(setq display-time-24hr-format t);;ʱ��ʹ��24Сʱ��  
(setq display-time-day-and-date t);;ʱ����ʾ�������ں;���ʱ��  
(setq display-time-use-mail-icon t);;ʱ�����Ա������ʼ�����  	
(setq display-time-interval 10);;ʱ��ı仯Ƶ�ʣ���λ�������ţ�  
  
;;;;;;;;;;;;;;;;;;;;;;;;;;; ��ʾʱ�����ý��� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
(setq visible-bell t)  
;;�رշ��˵ĳ���ʱ����ʾ��  
(setq inhibit-startup-message t)  
;;�ر�emacs����ʱ�Ļ���  
  
;(setq font-lock-maximum-decoration t)  
;(setq font-lock-global-modes '(not shell-mode text-mode))  
;(setq font-lock-verbose t)  
;(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))  
;; �﷨�������� shell-mode �� text-mode ֮���ģʽ��ʹ���﷨������  
  
(fset 'yes-or-no-p 'y-or-n-p)  
;; �ı� Emacs ��ִ��Ҫ��ش� yes ����Ϊ���� y ��ո����ʾ yes��n ��ʾ no��  
  
(ansi-color-for-comint-mode-on)  
;����shell��mode��������  
  
(setq default-fill-column 80)  
;Ĭ����ʾ 80�оͻ���  
  
(setq default-fill-column 120)  
;;�� fill-column ��Ϊ 60. ���������ָ��ö�  
  
(setq default-major-mode 'text-mode)  
(add-hook 'text-mode-hook 'turn-on-auto-fill)  
;;����ȱʡ��ģʽ��text��,������auto-fill��ģʽ.�����ǻ���ģʽfundamental-mode  
  
(show-paren-mode t);��ʾ����ƥ��  
(setq show-paren-style 'parenthesis)  
;;����ƥ��ʱ���Ը�����ʾ����һ�ߵ����ţ�����겻�ᷳ�˵�������һ�����Ŵ���  

(setq frame-title-format "emacs@%b")
;;��ʾbuffer����
(mouse-avoidance-mode 'animate)  
;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ�

(setq-default kill-whole-line t)
;; ������ C-k ʱ��ͬʱɾ�����С�

(setq x-select-enable-clipboard t)
;;����emacs���ⲿ���������ճ��

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

;; ������Ŀ����·��
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
