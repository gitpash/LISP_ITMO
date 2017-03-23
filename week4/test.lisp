;(defun test (a b &optional (c 1 c-p) (d 4 d-p))
;        (+ a (if c-p d b) c d))
;(print (test 1 2 3))
(defun square-roots (a b c)
    ;return roots of square equality
    (if (= a 0)
        (error "jopa ne kvadratnaya"))

    (let* ((D (- (* b b) (* 4 a c)))
            (x1 (/ (+ (- b) (sqrt D)) (* 2 a)))
            (x2 (/ (- (- b) (sqrt D)) (* 2 a))))
        (if (= x1 x1) (list x1)) ;не забудь скобку в теле иф 
                        (list x1 x2)))

;(square-roots 1 0 -4)
(print (square-roots 3 -2 6))
