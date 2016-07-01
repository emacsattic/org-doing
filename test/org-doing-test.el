;;; Test for `org-doing'

;;; Commentary:
;; These are the tests for `org-doing'

;;; Code:

(ert-deftest org-doing-done-with-args ()
  "Org-doing omni command should handle done with one or more arguments."
  (with-mock
   (stub org-doing-done => t)
   (should (org-doing "done some stuff"))))

(ert-deftest org-doing-done-with-no-arg ()
  "Org-doing omni command should handle done with no additional arguments."
  (with-mock
   (stub org-doing-done => t)
   (should (org-doing "done"))))

(ert-deftest org-doing-bury-buffer-after-logging ()
  "After logging a task, the buffer should be buried."
  (mocklet (((bury-buffer) :times 2))
   (org-doing-log "hello")
   (org-doing-done "world")))

(ert-deftest org-doing-save-buffer-after-logging ()
  "After logging a task, the buffer should be saved."
  (mocklet (((save-buffer) :times 2))
    (org-doing-log "hello")
    (org-doing-done "world")))
