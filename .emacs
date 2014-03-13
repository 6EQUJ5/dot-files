(setq x-select-enable-clipboard 't)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; FOREGROUND BACKGROUND
(set-foreground-color "grey")
(set-background-color "black")


(normal-top-level-add-to-load-path
 '("/usr/misk/emacs-stuff"))

;; solarized stuff
(set 'custom-theme-directory "~/.emacs.d/themes")

(rcirc-track-minor-mode 't)
(setq rcirc-default-nick "tseno")

(put 'upcase-region 'disabled nil)

;; (plist-get '( :image  "dom" :homo "pam") :image)


;; ==================== FACES ====================
;; (x-list-fonts "-*-terminus-medium-r-normal-*-12-120-72-72-c-60-iso8859-1")

;;(defface face1 
;;  '((t :inherit 'default :background "black"))
;;  "need face1 for font xft:Terminus:pixelsize=14:style=Regular")
;; ================== END FACES ==================
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;; (custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;;  '(face1 ((t (:font "-gnu-unifont-medium-r-normal--16-*-75-75-c-80-iso10646-1")))))

;; 

(setq diary-file "~/diary1")

(setq view-diary-entries-initially t
      mark-diary-entries-in-calendar t
      number-of-diary-entries 7)

(add-hook 'diary-display-hook 'fancy-diary-display)
(add-hook 'today-visible-calendar-hook 'calendar-mark-today)

;; SCHEME PROGRAM NAME 
(setq scheme-program-name "scheme48")


;; set up common lisp environment
(add-to-list 'load-path "~/logiciels/slime")
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
(slime-setup)


;; w3m
(normal-top-level-add-to-load-path
 '("/usr/local/share/emacs/24.2/site-lisp/w3m"))

(autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
(require 'w3m)


;; GO MODE 
(add-to-list 'load-path "/usr/local/go/misc/emacs/")
(require 'go-mode-load)

;; HTMLIZE 
(require 'htmlize)

