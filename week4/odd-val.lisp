(defun count-odd (lst)
    (let ((count 0) (odds-list nil))
        (dolist (i lst)
            (when (oddp i)
                (push i odds-list)
                (incf count)))
        (values count (nreverse odd-list))))
        