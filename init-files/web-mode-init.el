(add-hook
 'web-mode-hook
 '(lambda ()
   (setq web-mode-engines-alist
    '(("php"    . "\\.ctp\\'")
      ("blade"  . "\\.blade\\."))
    )
   ))

(defun ieremii-php-tag-expansion-config nil
 (let* ((cell (assoc "php" web-mode-engines-auto-pairs)))
  (setf (cdr cell) (cddr cell))))

(ieremii-php-tag-expansion-config)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
 (setq web-mode-block-padding 0)
 (setq web-mode-style-padding 0)
 (setq web-mode-script-padding 0)

 (setq web-mode-markup-indent-offset 0)
 (setq web-mode-css-indent-offset 0)
 (setq web-mode-code-indent-offset 0)

 (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
 (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
 (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
 (add-to-list 'web-mode-indentation-params '("lineup-ternary" . nil)))

(add-hook 'web-mode-hook  'my-web-mode-hook)

(provide 'web-mode-init)
