
```
(global-linum-mode 1);
(setq linum-format "%d ");

(setq undo-limit 2000000)
(setq undo-strong-limit 40000000)

; Startup windowing
(setq next-line-add-newlines nil)
(split-window-horizontally)

(global-hl-line-mode 1)
(set-face-background 'hl-line "midnight blue")

(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(defun post-load-stuff ()
  (interactive)
  (menu-bar-mode -1)
  (maximize-frame)
  (set-foreground-color "burlywood3")
  (set-background-color "#161616")
  (set-cursor-color "#40FF40")
  )

(setq casey-aquamacs (featurep 'aquamacs))

;; key binding
(define-key global-map "\e " 'set-mark-command)

(define-key global-map "\er" 'revert-buffer)
(define-key global-map "\ek" 'kill-this-buffer) 
(define-key global-map "\es" 'save-buffer)

(define-key global-map "\ew" 'other-window)
(define-key global-map "\eu" 'undo)
(define-key global-map "\eq" 'append-as-kill)

(define-key global-map "\eg" 'goto-line)
(define-key global-map "\ej" 'imenu)


```