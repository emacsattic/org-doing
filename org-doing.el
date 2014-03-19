;;; org-doing.el --- Keep track of what you're doing

;; Copyright (C) 2014 Rudolf Olah <omouse@gmail.com>

;; Author: Rudolf Olah
;; URL: https://github.com/omouse/org-doing
;; Version: 0.1
;; Created: 2014-03-16
;; By: Rudolf Olah
;; keywords: tools, org

;; org-doing is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or (at
;; your option) any later version.
;;
;; org-doing is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with org-doing. If not, see <http://www.gnu.org/licenses/>.

;;; Code:
(require 'org)

(provide 'org-doing)

;;;###autoload
(defun org-doing-log ((later-p nil) description)
  "Logs the `description' of what you're doing now in the file
`org-doing-file'. When `later-p' is true, logs the item under the
\"Later\" heading."
  (interactive)
  )

;;; org-doing.el ends here
