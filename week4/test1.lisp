(multiple-value-bind
    (key val lst) ; свяжет полученные в get-properties значения с key val lst
        (get-properties *plist* '(two four))
            
    (format t
           "~a : ~a" key val)) ; формат вывода в консоль 


(defun func (&rest xs &aux (s 0))
			(dolist (x xs)
					(multiple-value-bind (i f) (truncate x)
							(setf s (+ s f))))
			s)
            