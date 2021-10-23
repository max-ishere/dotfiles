					; MELPA

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

					; Flyspell

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(package-initialize)

					; Autocomplete

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

(define-key global-map (kbd "C-c ;") 'iedit-mode)

(semantic-mode 1)
(defun mkr:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic))
(add-hook 'c-mode-common-hook 'mkr:add-semantic-to-autocomplete)

(global-ede-mode 1)

					; YAML (YML) mode

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.kv\\'" . yaml-mode))

					; org-mode

(setq org-startup-indented t)
(setq global-visual-line-mode t)
(add-hook 'org-mode-hook 'visual-line-mode )

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; Custom agenda view

					; Utilities

(global-visual-line-mode 1)
(global-aggressive-indent-mode 1)
(setq confirm-kill-emacs 'y-or-n-p)

					; diredX

(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")
            ;; Set dired-x global variables here.  For example:
            ;; (setq dired-guess-shell-gnutar "gtar")
            ;; (setq dired-x-hands-off-my-keys nil)
            ))
(add-hook 'dired-mode-hook
          (lambda ()
            ;; Set dired-x buffer-local variables here.  For example:
            ;; (dired-omit-mode 1)
            ))

					; Custom variables

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(sanityinc-tomorrow-night))
 '(custom-safe-themes
   '("7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default))
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(emms-mode-line-icon-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };"))
 '(fancy-splash-image nil)
 '(fci-rule-color "#404040")
 '(gnus-logo-colors '("#0d7b72" "#adadad") t)
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };") t)
 '(horizontal-scroll-bar-mode nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/")
 '(menu-bar-mode nil)
 '(org-agenda-custom-commands
   '(("u" "Unscheduled TODO"
      ((todo ""
	     ((org-agenda-overriding-header "")
	      (org-agenda-skip-function
	       '(org-agenda-skip-entry-if 'scheduled 'deadline)))))
      nil nil)))
 '(org-agenda-files
   '("/home/mkr/org/roller-website.org" "/home/mkr/org/shownotes.org" "/home/mkr/org/this-pc.org" "/home/mkr/org/todo.org"))
 '(org-agenda-sort-notime-is-late t)
 '(org-agenda-todo-1list-sublevels t)
 '(org-agenda-todo-ignore-with-date nil)
 '(package-archives
   '(("melpa" . "https://stable.melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(indent-control yaml-mode yaml neotree alect-themes cmake-project cmake-mode aggressive-indent iedit yasnippet auto-complete markdown-mode color-theme-sanityinc-tomorrow rainbow-mode cmake-ide))
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#404040")
 '(vc-annotate-color-map
   '((20 . "#c83029")
     (40 . "#db4334")
     (60 . "#959508")
     (80 . "#bcaa00")
     (100 . "#dc7700")
     (120 . "#c9d617")
     (140 . "#319448")
     (160 . "#078607")
     (180 . "#60a060")
     (200 . "#29b029")
     (220 . "#47cd57")
     (240 . "#4c8383")
     (260 . "#1ba1a1")
     (280 . "#0a7874")
     (300 . "#1e7bda")
     (320 . "#00a2f5")
     (340 . "#58b1f3")
     (360 . "#da26ce")))
 '(vc-annotate-very-old-color "#da26ce")
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
