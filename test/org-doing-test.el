;;; Test for `org-doing'

;;; Commentary:
;; These are the tests for `org-doing'

;;; Code:

(ert-deftest org-doing-done-with-args ()
  "Org-doing omni command should handle done with one or more arguments."
  (with-mock
   (stub org-doing-done => t)
   (should (org-doing "done some stuff"))))

(ert-deftest org-doing-with-no-command ()
  "Org-doing omni command with no specific command should default to TODO."
  (with-mock
   (stub org-doing-log => t)
   (should (org-doing "some stuff"))))

(ert-deftest org-doing-done-with-no-arg ()
  "Org-doing omni command should handle done with no additional arguments."
  (with-mock
   (stub org-doing-done => t)
   (should (org-doing "done"))))

(ert-deftest org-doing-next-with-no-arg ()
  "Org-doing omni command should handle next with no additional arguments."
  (with-mock
    (stub org-doing-start-next => t)
    (should (org-doing "next"))))

(ert-deftest org-doing-next-with--args ()
  "Org-doing omni command should handle next with arguments."
  (with-mock
    (stub org-doing-log => t)
    (should (org-doing "next some stuff"))))

(ert-deftest org-doing-save-buffer-after-logging ()
  "After logging a task, the buffer should be saved."
  (with-mock
    (mock (save-buffer) => t :times 2)
    (org-doing-log "hello")
    (org-doing-done "world")))

(ert-deftest org-doing-current-buffer-after-logging ()
  "After logging a task, the current buffer should be restored unless configured otherwise."
  (with-mock
    (stub save-buffer => t)
    (org-doing-log "hello")
    (org-doing-done "world")
    (should (not (org-doing-buffer-current-p)))
    (let ((org-doing-stay-in-buffer t))
      (org-doing-log "hello")
      (org-doing-done "world")
      (should (org-doing-buffer-current-p)))))

(defun org-doing-buffer-current-p ()
  "Return non-nil if current buffer is visiting the `org-doing-file'."
  (when buffer-file-name
    (equal (expand-file-name buffer-file-name)
           (expand-file-name org-doing-file))))
