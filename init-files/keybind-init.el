(global-unset-key (kbd "C-o"))
(global-unset-key (kbd "<insert>"))
(global-unset-key (kbd "C-<insert>"))
(global-unset-key (kbd "C-o"))
(global-unset-key [tab])
(global-unset-key (kbd "M-c"))
(global-unset-key (kbd "C-x C-f"))
(global-unset-key [f10])
(add-hook 'isearch-mode-hook '(lambda ()
                                (define-key isearch-mode-map (kbd "C-S-s") 'isearch-repeat-backward)))
(add-hook 'helm-mode-hook '(lambda ()
                             (define-key helm-map (kbd "C-h") 'helm-next-line)
                             (define-key helm-map (kbd "C-t") 'helm-previous-line)
                             (define-key helm-map (kbd "C-o") 'helm-next-page)
                             (define-key helm-map (kbd "C-e") 'helm-previous-page)
                             (define-key helm-map (kbd "C-r") 'delete-char)
                            ))

(add-hook 'dired-mode-hook '(lambda ()
                             (define-key dired-mode-map (kbd "u") 'dired-up-directory)))
                                                         
(global-unset-key (kbd "C-\\"))
(global-unset-key (kbd "C--"))

(global-unset-key (kbd "C-S-h"))
(global-unset-key (kbd "C-S-t"))
(global-unset-key (kbd "C-x C-c"))
(global-unset-key (kbd "C-_"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-v"))


(define-key minibuffer-local-map (kbd "C-t") 'previous-history-element)
(define-key minibuffer-local-map (kbd "C-h") 'next-history-element)

(global-unset-key (kbd "C-u"))
(global-unset-key (kbd "C-y"))
(global-unset-key (kbd "C-w"))
(global-unset-key (kbd "M-w"))
(global-unset-key (kbd "M-y"))

(global-unset-key (kbd "M-h"))
(global-unset-key (kbd "M-t"))



(define-key minibuffer-local-map (kbd "C-S-t") 'previous-history-element)
(define-key minibuffer-local-map (kbd "C-S-h") 'next-history-element)



;; (makunbound 'overriding-minor-mode-map)
(define-minor-mode overriding-minor-mode
  "force keybinds"             ; description
  t                                     ; enable default
  ""                                    ; display nothing in the modeline
  `(
	(,(kbd "C-t") . previous-line)
	(,(kbd "C-@") . undo)
	(,(kbd "C-u") . end-of-line)
	(,(kbd "C-o") . scroll-up-command)
	(,(kbd "C-e") . scroll-down-command)
	(,(kbd "C-S-e") . beginning-of-buffer)
	(,(kbd "C-S-o") . end-of-buffer)

	(,(kbd "<tab>") . execute-extended-command)
	(,(kbd "C-p") . yank)
	(,(kbd "C-S-p") . yank-pop)
	(,(kbd "C-d") . backward-char)
;	(,(kbd "C-o o") . skk-hiragana-set)
;	(,(kbd "C-o e") . skk-katakana-set)
;	(,(kbd "C-o u") . skk-latin-mode)
	(,(kbd "C-z") . skk-toggle-kana-and-latin)
	(,(kbd "C-S-z") . toggle-and-print-jitai)
	(,(kbd "C-S-v") . scroll-down-command)
	(,(kbd "<backtab>") . save-buffer)
	(,(kbd "C-<tab>") . save-buffer)
	(,(kbd "C-a") . beginning-of-line)
	;; (,(kbd "C-<") . beginning-of-buffer)
	;; (,(kbd "C->") . end-of-buffer)
	(,(kbd "C-x C-h") . skk-mode)
	(,(kbd "C-S-u") . skk-mode)
	(,(kbd "C-x j") . open-junk-file)
	(,(kbd "C-b") . delete-backward-char)
	(,(kbd "C-S-b") . backward-kill-word)
	(,(kbd "C-S-k") . move-line-to-opposite-window)
	(,(kbd "C-S-s") . isearch-backward)
	(,(kbd "C-S-t") . previous-logical-line)
	(,(kbd "C-S-h") . next-logical-line)
	(,(kbd "<f1>") . delete-other-windows)
;;;(,[f2] . my-buffer-menu)
	(,(kbd "<f2>") . my-buffer-menu2)
	(,(kbd "<f3>") . other-window)
	(,(kbd "<f4>") . open-init-el)
	(,(kbd "<f5>") . lispxmp)
	(,(kbd "<f6>") . shell)
	(,(kbd "C-<f6>") . eshell)
	(,(kbd "<f7>") . toggle-and-print-skk-kutouten-type)
;;;(,[f7] . eshell)
	(,(kbd "<f8>") . toggle-and-print-jitai)
	(,(kbd "C-<f8>") . show-lub)
;;;(,[f9] . save-buffer)
	(,(kbd "<f9>") . prepare-article-2)
	(,(kbd "<f10>") . delete-window)
	(,(kbd "<f11>") . dired-pwd)
	(,(kbd "C-<f11>") . dired)
	(,(kbd "S-<muhenkan>") . delete-window)
	(,(kbd "<tab>") . helm-M-x)
	(,(kbd "<left>") . backward-char)
	(,(kbd "<right>") . forward-char)
;;;(,(kbd "S-<left>") . backward-kill-word)
	(,(kbd "<up>") . previous-line)
	(,(kbd "<down>") . next-line)
	(,(kbd "C-r") . delete-char)
	(,(kbd "C-S-r") . kill-word)
	(,(kbd "C-S-k")  . kill-sentence)
	(,(kbd "C-d") . backward-char)
	(,(kbd "C-S-d") . backward-word)
	(,(kbd "C-h") . next-line)
	(,(kbd "C-t") . previous-line)
	(,(kbd "C-n") . forward-char)
	(,(kbd "M-o") . find-file)
	(,(kbd "M-O") . helm-for-files)
	(,(kbd "C-S-d") . backward-word)
	(,(kbd "C-S-n") . forward-word)
	(,(kbd "M-o") . find-file)
	(,(kbd "C-S-w") . save-buffers-kill-terminal)
	(,(kbd "C-,") . my-copy-region-as-kill)
	(,(kbd "C-.") . my-kill-region)
	(,(kbd "M-h") . shrink-window)
	(,(kbd "M-t") . enlarge-window)
	

	))



(provide 'keybind-init)
