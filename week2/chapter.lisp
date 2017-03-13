#|(defun print-n-randoms(n max-limit)
  (dotimes (i n)
    (format t "~r~%" (random max-limit))))
(print-n-randoms 1 10.7)
(if (= 4(* 2 2))
  (print "ok")
  (print "nope"))

(defun nth-dec-digit(num n)
  (rem
    (truncate
      (/ (abs num) (expt 10 n)))
      10))
(nth-dec-digit 2423423 1)|#

;(and (not (null (< 4 9 22))) (or (listp nil) (char= #\a #\A)) (+ (* 4 10) 2))
;(eq 't (and (or t nil) '()))
;(eq "string" "string")
;(= (expt 10 3) 10e2)
;(eq (expt 10 3) 10e2)
(equalp (expt 10 3) 10e2)
