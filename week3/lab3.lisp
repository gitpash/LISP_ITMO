;(defparameter arr (read))
; только строки без буквы а
(setf arr #3A(((1.8 5 #\B "may") ("the" 2.25 1.3 4) (17 0 "force" 55)) (("be" #C(0 1) 5.02 99) ("with" 1.1 (#\Y #\N) 0.87) ("you!" #C(2.2 3.3) 42 4.2))))
;(print arr)
(defvar sum 0)
(dotimes (i 2)
    (dotimes (j 3)
        (dotimes (k 4)
        (when (and (stringp (aref arr i j k )) (equal NIL (search "a" (aref arr i j k ))))
            (setf sum (+ sum (length(aref arr i j k ))))))))
(print sum)
