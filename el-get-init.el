(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle! f)
(el-get-bundle! helm)
(el-get-bundle! php-mode)
(el-get-bundle! yaml-mode)
(el-get-bundle ddskk)
(el-get-bundle zenitani/elisp)
(el-get-bundle syohex/emacs-git-gutter)
(el-get-bundle editorconfig)
(el-get-bundle evil :info nil)
(el-get-bundle! fxbois/web-mode)

;;;(el-get-bundle! magit)

(if (string= emacs-version "24.5.1")
    (el-get-bundle! magit)
  nil)

(provide 'el-get-init)
