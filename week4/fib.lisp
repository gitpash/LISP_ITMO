(defun fib (n)
    "n-ный член ряда Фибоначчи"
    (if (< n 2)
        1
        (+ (fib (- n 1)) (fib (- n 2)))))


        ;;;;;;;;; Мемоизация ;;;;;;;;;
;; оптимизация кода прграммы в виде сохранения 
;; промежуточных вычислений для последующего использования

(defparameter *fibarr*  ; пустой массив из 100эл
    (make-array 100 :initial-element nil)) ; важно! индекс в массиве соотв индексу ряда Фибоначчи
(setf (aref *fibarr* 0) 1  ; первый и второй эл = 1
            (aref *fibarr* 1) 1)

(defun fib-memo (n)
    "n-ый член ряда Фибоначчи"
    (if (null (aref *fibarr* n))
        (setf (aref *fibarr* n )
            (+ (fib-memo (- n 1))
                    (fib-memo (- n 2))))
        (aref *fibarr* n)))

