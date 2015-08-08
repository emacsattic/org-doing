;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Given "^I have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(When "^I have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(Then "^I should have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(And "^I have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(But "^I should not have \"\\(.+\\)\"$"
  (lambda (something)
    ;; ...
    ))

(Given "^I have a non-existent org-doing-file$"
  (lambda ()
    (not (file-exists-p org-doing-file))))

(Given "^I have an existing org-doing-file$"
  (lambda ()
    (find-file org-doing-file)
    (insert "#+TITLE: existing org doing file\n")))

(When "^I have opened the org-doing-file$"
  (lambda ()
    (org-doing-find-or-create-file)))

(When "^I log to the file$"
  (lambda ()
    (org-doing-log "this is a test")))

(Then "^the org-doing-file should start with:"
  (lambda (header-text)
    (goto-char (point-min))
    (search-forward header-text nil t)))

(Then "^the org-doing-file will not be modified"
  (lambda ()
    (goto-char (point-min))
    (search-forward "#+TITLE:" nil t)
    (not (search-forward "#+TITLE:" nil t))))

(Then "^the buffer will be saved$"
  (lambda ()
    (not (buffer-modified-p (get-file-buffer org-doing-file)))))

(Then "^the buffer will be buried$"
  (lambda ()
    (not (equal (get-file-buffer org-doing-file)
		(current-buffer)))))

(Then "^the buffer will be saved and buried"
  (lambda ()
    (and (Then "the buffer will be saved")
         (Then "the buffer will be buried"))))
