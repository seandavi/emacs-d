(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete-1.3.1")
;; Turn on horizontal scrolling with mouse wheel
(global-set-key (kbd "<mouse-6>") 'scroll-right)
(global-set-key (kbd "<mouse-7>") 'scroll-left)

;; ipython 
(setq ipython-command "/usr/local/Cellar/python/2.7.1/bin/ipython")
(require 'ipython)
(setq py-python-command-args '("--pylab"))

;; python
;; (autoload 'python-mode "python-mode" "Python Mode." t)
;; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-to-list 'interpreter-mode-alist '("python" . python-mode))
;; (require 'python-mode)
;; (autoload 'pymacs-apply "pymacs")
;; (autoload 'pymacs-call "pymacs")
;; (autoload 'pymacs-eval "pymacs" nil t)
;; (autoload 'pymacs-exec "pymacs" nil t)
;; (autoload 'pymacs-load "pymacs" nil t)
;; (pymacs-load "ropemacs" "rope-")
;; (setq ropemacs-enable-autoimport t)

;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "/Users/sdavis/.emacs.d/site-lisp/ac-dict")
;; (ac-config-default)
;; (global-auto-complete-mode t)

;; (setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
;; (setq interpreter-mode-alist (cons '("python" . python-mode) interpreter-mode-alist))
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

;; color-theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-arjen)))

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
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
