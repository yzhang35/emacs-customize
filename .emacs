;; Using color theme
;(add-to-list 'load-path "~/.emacs.d/lisp/color-theme")
;(require 'color-theme)
;(eval-after-load "color-theme"
;  '(progn
;     (color-theme-initialize)
;     ;; Change this for diff theme
;     (color-theme-calm-forest)))

;; Using igrep
(add-to-list 'load-path "~/.emacs.d/lisp/igrep")
(require 'igrep)

;; Using cscope
(add-to-list 'load-path "~/.emacs.d/lisp/cscope")
(require 'xcscope)
(setq cscope-do-not-update-database t)
(setq exec-path(cons "/usr/local/bin" exec-path))

;; auto reopen buffers from last session on startup
(desktop-save-mode 1)

;; Disable the tool bar
(custom-set-variables
'(tool-bar-mode nil nil (tool-bar)))

;; Disable the menu bar
(custom-set-variables
'(menu-bar-mode nil nil (menu-bar)))

;; Highlight cursor line
;(global-hl-line-mode t)

;; Turn on font lock mode
(global-font-lock-mode t)

;;maximum color
(setq font-lock-maximum-decoration t)

;; Set font size
;; The value is in 1/10pt, so 100 will give you 10pt
(set-face-attribute 'default nil :height 150)

;; Set language support
(set-language-environment 'Chinese-GB)

;; Turn off bell sound
(setq visible-bell t)

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; Display the time in the status line
(load "time" t t)
(display-time)

;; Modify frame title format
(setq frame-title-format
        (concat  "%b - emacs@" system-name))

;; Display column number
(setq column-number-mode t)

;; Set default line width to 80
;(setq default-fill-column 80)

;; Re-mapping the Delete key
(global-set-key (kbd "C-h") 'delete-backward-char)

;; Re-mapping mac os alt key to meta
;(global-set-key mac-option-modifer 'meta)


;; Set indent to four spaces
(setq standard-indent 4)

;; Turn off tab
(setq-default indent-tabs-mode nil)

;; ========== Place Backup Files in Specific Directory ==========
;; Enable backup files.
(setq make-backup-files t)
;; Enable versioning with default values (keep five last versions, I think!)
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/zhangyan23/emacs_backups/"))))

;; hippie auto completion
(setq hippie-expand-try-functions-list      
      '(try-expand-line        
        try-expand-dabbrev        
        try-expand-line-all-buffers        
        try-expand-list        
        try-expand-list-all-buffers        
        try-expand-dabbrev-visible        
        try-expand-dabbrev-all-buffers        
        try-expand-dabbrev-from-kill        
        try-complete-file-name        
        try-complete-file-name-partially        
        try-complete-lisp-symbol        
        try-complete-lisp-symbol-partially        
        try-expand-whole-kill))
(global-set-key (kbd "M-;") 'hippie-expand)
; (global-set-key (kbd "M-/") 'dabbrev-expand)

;; my test
(defun this-line-to-top-of-windows (line)
"Reposition line point is on to top of window.
With ARG, put point on line ARG."
(interactive "P")
(recenter (if (null line)
              0
            (prefix-numeric value line))))
