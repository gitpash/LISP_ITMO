(defun count-odd (lst)
     ; считаем нечетные числа в списке
    (let ((count 0) (odds-list nil))
        (dolist (i lst)
            (when (oddp i)
                (push i odds-list)
                (incf count)))
        (values count (nreverse odd-list))))
