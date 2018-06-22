;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     html
     javascript
     markdown
     yaml
     python
     rust
     c-c++
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;; markdown
     ;; org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     version-control
     latex
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(evil-mc evil-goggles beacon)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(tsdh-dark
                         tsdh-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 20
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq exec-path-from-shell-check-startup-files nil)
  )

(defun fancy-save ()
  (interactive)
  (save-buffer)
  (when (derived-mode-p 'rust-mode) (cargo-process-check))
  (when (derived-mode-p 'c++-mode) (recompile))
  (when (derived-mode-p 'java-mode) (recompile))
  (when (derived-mode-p 'latex-mode) (TeX-command-run-all nil)))

(setq acpl--max-dist 2500)

(defun buffer-until-point ()
  (buffer-substring (max (point-min) (- (point) acpl--max-dist)) (point)))
(defun buffer-after-point ()
  (buffer-substring (point) (min (point-max) (+ (point) acpl--max-dist))))

(require 'json)

(setq acpl--path "/home/zxqfl/code/acpl/target/release/acpl")
(setq acpl--version "0.1.0")

(setq acpl--receive-output
      (lambda (process output)
        (setq acpl--output output)))

(defun acpl--setup ()
  (unless (and (boundp 'acpl--process) acpl--process)
    (setq acpl--stderr (make-pipe-process :name "acpl-stderr"))
    (setq acpl--process
          (make-process
           :name "acpl"
           :command `(,acpl--path)
           :filter acpl--receive-output
           :coding 'utf-8
           :stderr acpl--stderr
           :connection-type 'pipe))
    (set-process-query-on-exit-flag acpl--process nil)
    (set-process-query-on-exit-flag acpl--stderr nil)))

(acpl--setup)

(defun acpl-restart ()
  (interactive)
  (delete-process acpl--process)
  (delete-process acpl--stderr)
  (setq acpl--process nil)
  (acpl--setup))

(defun acpl--request (request)
  (let ((request `(:version ,acpl--version
                            :request ,request)))
    (let ((request-string (concat (json-encode request) "\n")))
      (process-send-string acpl--process request-string)
      (accept-process-output acpl--process 1)
      (json-read-from-string acpl--output))))

(defun acpl--autocomplete (before after)
  (let ((request-result
         (acpl--request
          `(:Autocomplete (:before ,before
                                   :after ,after
                                   :filename ,buffer-file-name)))))
    (append request-result nil)))

(setq old-buffer-file-name nil)

(defun acpl--prefetch ()
  (when (and buffer-file-name (not (equal buffer-file-name old-buffer-file-name)))
    (setq old-buffer-file-name buffer-file-name)
    (acpl--request
     `(:Prefetch (:filename ,buffer-file-name)))))

(defun acpl--complete-whole-line (before line after)
  (acpl--request
   `(:CompleteWholeLine (:before ,before
                                 :line ,line
                                 :after ,after
                                 :filename ,buffer-file-name))))

(defun company-acpl-backend (command &optional arg &rest ignored)
  (interactive (list 'interactive))
  (cl-case command
    (interactive (company-begin-backend 'company-acpl-backend))
    (prefix (company-grab-word))
    (candidates (acpl--autocomplete (buffer-until-point) (buffer-after-point)))
    (sorted "yes")))

(defun acpl-mode ()
  (interactive)
  (set-variable 'company-backends '(company-acpl-backend)))

(defun magit-status-config ()
  (local-set-key (kbd "C") 'magit-commit)
  (local-set-key (kbd "P") 'magit-push-to-remote))

(defun acpl-complete-line ()
  (interactive)
  (let ((start (line-beginning-position))
        (end (line-end-position)))
    (let ((before (buffer-substring (point-min) start))
          (line-contents (buffer-substring start end))
          (after (buffer-substring end (point-max))))
      (delete-region start end)
      (insert (acpl--complete-whole-line before line-contents after)))))

(defun indent-if-small-enough ()
  (when (< (buffer-size 5000))
    (spacemacs/indent-region-or-buffer)))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (global-evil-mc-mode 1)
  (beacon-mode 1)
  (add-hook 'after-init-hook 'global-company-mode)
  ;; (set-variable 'company-backends '(company-acpl-backend))
  (set-variable 'company-backends-rust-mode '(company-acpl-backend))
  (set-variable 'company-backends-LaTeX-mode '(company-acpl-backend))
  (set-variable 'company-backends-python-mode '(company-acpl-backend))
  (add-hook 'prog-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (add-hook 'c++-mode-hook 'acpl-mode)
  (add-hook 'java-mode-hook 'acpl-mode)
  (add-hook 'markdown-mode-hook 'acpl-mode)
  (add-hook 'post-command-hook 'acpl--prefetch)
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (LaTeX-add-environments "align*")))
  (setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
  (setq TeX-view-evince-keep-focus t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-transformers nil)
  (setq cargo-process--command-test "test --release")
  (setq-default evil-escape-key-sequence nil)
  (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
  (setq avy-keys '(?s ?d ?f ?g ?h ?j ?k ?l ?a ?y ?t ?b ?r ?u ?v ?n ?e ?i ?c ?m ?o ?w ?p ?q ?x ?z))
  (define-key evil-normal-state-map (kbd "<escape>") 'evil-mc-undo-all-cursors)
  (define-key evil-insert-state-map (kbd "C-<return>") 'with-editor-finish)
  (defun define-for-each-state (key cmd)
    (define-key evil-insert-state-map key cmd)
    (define-key evil-normal-state-map key cmd)
    (define-key evil-visual-state-map key cmd))
  (define-for-each-state (kbd "C-a") 'evil-avy-goto-char)
  (define-for-each-state (kbd "C-z") 'evil-avy-goto-word-0)
  (define-for-each-state (kbd "C-l") 'evil-avy-goto-line)
  (define-for-each-state (kbd "C-s") 'save-buffer)
  (define-for-each-state (kbd "C-S-s") 'fancy-save)
  (define-for-each-state (kbd "C-S-d") 'spacemacs/duplicate-line-or-region)
  (define-for-each-state (kbd "C-S-m") 'avy-move-region)
  (define-for-each-state (kbd "C-S-k") 'avy-kill-region)
  (define-for-each-state (kbd "C-S-c") 'avy-copy-region)
  (define-for-each-state (kbd "C-S-r") 'counsel-projectile-rg)
  (define-for-each-state (kbd "C-S-v") 'helm-show-kill-ring)
  (define-for-each-state (kbd "C-x") 'acpl-complete-line)
  (add-hook 'magit-mode-hook 'magit-status-config)
  (add-hook 'before-save-hook (lambda () (when (derived-mode-p 'rust-mode) (indent-if-small-enough))))
  (add-hook 'before-save-hook (lambda () (when (derived-mode-p 'c++-mode) (indent-if-small-enough))))
  (define-key evil-normal-state-map (kbd "m") 'next-error)
  (evil-goggles-mode)
  (evil-goggles-use-diff-faces)
  (setq evil-goggles-pulse t)
  (setq evil-goggles-blocking-duration 0.070)
  (setq beacon-blink-when-point-moves-vertically 1)
  (setq beacon-blink-when-buffer-changes nil)
  (setq beacon-blink-when-window-changes nil)
  (setq beacon-blink-delay 0)
  (setq beacon-blink-duration 0.3)
  (setq beacon-size 40)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (company-web web-mode tagedit slim-mode scss-mode sass-mode pug-mode haml-mode emmet-mode web-completion-data xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help helm-themes helm-swoop helm-projectile helm-mode-manager helm-flx helm-descbinds helm-ag ace-jump-helm-line yapfify yaml-mode ws-butler winum which-key wgrep web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toml-mode toc-org spaceline smex smeargle restart-emacs request rainbow-delimiters racer pyvenv pytest pyenv-mode py-isort popwin pip-requirements persp-mode pcre2el paradox orgit org-bullets open-junk-file neotree move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum livid-mode live-py-mode linum-relative link-hint json-mode js2-refactor js-doc ivy-hydra indent-guide hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump disaster diminish diff-hl define-word cython-mode counsel-projectile company-tern company-statistics company-c-headers company-auctex company-anaconda column-enforce-mode coffee-mode cmake-mode clean-aindent-mode clang-format cargo beacon auto-yasnippet auto-highlight-symbol auto-compile auctex-latexmk aggressive-indent adaptive-wrap ace-window ace-link ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-goggles-delete-face ((t (:inherit diff-removed))))
 '(evil-goggles-paste-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-add-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-change-face ((t (:inherit diff-changed))))
 '(evil-goggles-undo-redo-remove-face ((t (:inherit diff-removed))))
 '(evil-goggles-yank-face ((t (:inherit diff-changed)))))
