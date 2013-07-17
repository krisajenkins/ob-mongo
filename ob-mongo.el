;;; ob-mongo.el --- Execute mongodb queries within org-mode blocks.
;; Copyright 2013 Kris Jenkins

;; Author: Kris Jenkins <krisajenkins@gmail.com>
;; Maintainer: Kris Jenkins <krisajenkins@gmail.com>
;; Keywords: org babel mongo mongodb
;; URL: https://github.com/krisajenkins/ob-mongo
;; Created: 17th July 2013
;; Version: 0.1.0
;; Package-Requires: ( (org "8"))

;;; Commentary:
;;
;; Execute mongodb queries within org-mode blocks.

;;; Code:
(require 'ob)

;;;###autoload
(defun org-babel-execute:mongo (body params)
  "org-babel mongo hook."
  (org-babel-eval "mongo --quiet" body))

;;;###autoload
(add-to-list 'org-src-lang-modes '("mongo" . js))

(provide 'ob-mongo)

;;; ob-mongo.el ends here
