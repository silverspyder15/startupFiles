;;; ~/.emacs

(require 'cl)

;; I keep everything under ~/emacs
(defvar emacs-root (cond ((eq system-type 'cygwin) "/home/nilesh/")
			 ((eq system-type 'gnu/linux) "/home/nilesh/")
			 ((eq system-type 'linux) "/home/nilesh/")
			 ((eq system-type 'darwin) "/Users/nilesh/")
			 (t "c:/home/ngavaskar/"))
  "My home directory -- the root of my personal emacs load-path")

;; Add all the elisp directories under ~/emacs to my load path
(labels ((add-path (p) (add-to-list 'load-path (concat emacs-root p))))
  (add-path "emacs/lisp")            		;; all my personal elisp code
  (add-path "emacs/site-lisp")			;; elisp stuff from the net
  (add-path "emacs/site-lisp/color-theme")	;; http://www.emacswiki.org/cgi-bin/wiki?ColorTheme
  (add-path "emacs/site-lisp/erlang")		;; file:/usr/lib64/erlang/lib/tools-2.5.2/emacs
  (add-path "emacs/site-lisp/git-emacs")	;; git://github.com/tsgates/git-emacs.git
  (add-path "emacs/site-lisp/nxml-mode")	;; http://www.thaiopensource.com/nxml-mode
  (add-path "emacs/site-lisp/speedbar")		;; http://cedet.sourceforge.net/speedbar.shtml
  )

;; Set cscope initial directory

(require 'font-lock) ; enable syntax highlighting

;; The remainder of my config is in libraries
(load-library "efuncs")				;; custom functions
(load-library "ekeys")				;; key bindings
(load-library "cc-config")			;; C/C++ mode config
(load-library "dired-config")			;; dired-mode config
(load-library "erl-config")			;; Erlang mode config
(load-library "git-config")			;; Git mode config
;;(load-library "irc-config")			;; IRC client config
(load-library "misc-config")			;; miscellaneous one-off config settings
(load-library "p4-config")			;; Perforce config
;;(load-library "ruby-config")			;; Ruby mode config
(load-library "scons-config")			;; scons-related config
(load-library "screen-config")			;; window config
(load-library "shell-config")			;; shell config
(load-library "skeleton-config")		;; skeleton config
(load-library "xml-config")			;; XML mode config
(load-library "xcscope")			;; cscope config
(load-library "xpycscope")			;; python cscope config
(load-library "goto-last-change")               ;; Go to the last change in the buffer

(require 'xcscope)
(setq cscope-do-not-update-database t)
(setq cscope-set-initial-directory "/home/nilesh/workspaces")
(provide 'cscope-config)

(server-start)					;; start the emacs server running



;;; end ~/.emacs


(put 'set-mark-command 'disabled nil)
