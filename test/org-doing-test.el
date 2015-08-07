;;; Test for `org-doing'

;;; Commentary:
;; These are the tests for `org-doing'

;;; Code:

(ert-deftest org-doing-should-not-pass ()
  (should-not nil))

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
