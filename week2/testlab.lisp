;;loop through number 4 times
(defun change-byte (b)
 (if (= (logbitp 0 b) 0)
	(setf b
    (logxor
      (+ (ash 1 2) (ash 1 3)
      b))))
 (if (= (logbitp 4 b) 0)
     (setf b
           (logxor
            (+ (ash 1 6) (ash 1 7)
               b)))))
;(defvar x 0)
(change-byte 3)


#|;(print "Input an integer: ")

;; читаем число из потока ввода
(setf x (read))

;; цикл по байтам числа
(dotimes (i (ceiling (integer-length x) 8))
  (setf x
    (dpb
      (change-byte (ldb (byte 8 (* i 8)) x))
      (byte 8 (* i 8)) x)))
;; выводим результат

(print x)|#
