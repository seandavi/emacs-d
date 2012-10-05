(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
(add-to-list 'load-path "/usr/share/emacs/site-lisp")
;; Turn on horizontal scrolling with mouse wheel
(global-set-key (kbd "<mouse-6>") 'scroll-right)
(global-set-key (kbd "<mouse-7>") 'scroll-left)

(setenv "PATH" "/usr/local/Cellar/ruby/1.9.2-p290/bin:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7.1/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/X11/bin")

;; ipython 
(setq ipython-command "/usr/local/Cellar/python/2.7.1/bin/ipython")
(require 'ipython)
(setq py-python-command-args '("--pylab"))


(add-to-list 'load-path "~/.emacs.d/site-lisp/python-mode.el-6.0.11") 
(setq py-install-directory "~/.emacs.d/site-lisp/python-mode.el-6.0.11") 
(require 'python-mode)
(setq py-shell-name "ipython")

;; python
; (autoload 'python-mode "python-mode" "Python Mode." t)
; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
; (add-to-list 'interpreter-mode-alist '("python" . python-mode))
; (require 'python-mode)
; (autoload 'pymacs-apply "pymacs")
; (autoload 'pymacs-call "pymacs")
; (autoload 'pymacs-eval "pymacs" nil t)
; (autoload 'pymacs-exec "pymacs" nil t)
; (autoload 'pymacs-load "pymacs" nil t)
;; (pymacs-load "ropemacs" "rope-")
;; (setq ropemacs-enable-autoimport t)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/sdavis/.emacs.d/site-lisp/ac-dict")
(ac-config-default)
(global-auto-complete-mode t)

(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode) interpreter-mode-alist))
;; (autoload 'python-mode "python-mode" "Python editing mode." t)
;; (require 'pymacs)
;; (pymacs-load "ropemacs" "rope-")

;; yasnippet bundle load
(require 'yasnippet-bundle)

;; yasnippet normal install
(add-to-list 'load-path
	     "~/.emacs.d/site-lisp/yasnippet-0.6.1c")
    (require 'yasnippet) ;; not yasnippet-bundle
    (yas/initialize)
    (yas/load-directory "~/.emacs.d/site-lisp/yasnippet-0.6.1c/snippets")


;; color-theme not needed after emacs 24 upgrade
;; color-theme
; (require 'color-theme)
; (eval-after-load "color-theme"
 ;  '(progn
  ;    (color-theme-initialize)
   ;  (color-theme-dark-laptop)))

;; ESS
(add-to-list 'load-path "~/.emacs.d/site-lisp/ess-5.14/lisp")
(require 'ess-site)

;; muse 
(add-to-list 'load-path "~/.emacs.d/site-lisp/muse/lisp")
(require 'muse-mode)     ; load authoring mode
     
(require 'muse-html)     ; load publishing styles I use
(require 'muse-latex)
(require 'muse-texinfo)
(require 'muse-docbook)

(require 'muse-project)  ; publish files in projects
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(bmkp-last-as-first-bookmark-file "~/.emacs.bmk")
 '(custom-enabled-themes (quote (wheatgrass)))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold nil)
 '(org-agenda-files (quote ("~/Google Drive/org-files/org/notes.org" "~/SyncFolder/Notes/notes.org")))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; EMACS FOR PYTHON
;; (load-file "~/.emacs.d/site-lisp/emacs-for-python/epy-init.el")
; (setq python-python-command "ipython")

;; auctex stuff
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; backup stuff
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups"""")))

;; CEDET
(load-file "~/.emacs.d/site-lisp/cedet-1.1/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu

;; ORG MODE
(load-file "~/.emacs.d/org-init.el")

;; (load-library "init_python")

;; Bookmark-Plus
;; http://www.emacswiki.org/emacs/BookmarkPlus
;; https://github.com/emacsmirror/bookmark-plus
(add-to-list 'load-path "~/.emacs.d/site-lisp/bookmark-plus")
(require 'bookmark+)


;; Beginning of the el4r block:
;; RCtool generated this block automatically. DO NOT MODIFY this block!
(add-to-list 'load-path "/usr/local/Cellar/ruby/1.9.2-p290/share/emacs/site-lisp")
(require 'el4r)
;; (el4r-boot)
;; End of the el4r block.

