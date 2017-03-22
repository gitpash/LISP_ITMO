(setf arr #3A((("R" "Lisp" "Python" "perl") ("C" "Lisp" "Pascal" "D")) (("SQL" "Java" "Pascal" "Lisp") ("Nemerle" "R" "Julia" "piet")) (("C++" "Oberon" "C" "Pascal") ("Lisp" "Python" "Ruby" "FORTRAN"))))

;(defparameter arr (read))

(defun max-often (arr)
    ;функцию принимает массив и выдаёт макс. значение из списка 		 ключ-значение
 (let ((l-arr (array-dimensions arr)) (v nil) (p nil) (new-l nil))
          ;; инициализируем переменные как длину массива, счётчики для ключей и значений и пустой список для хранения

      ; проходим по всем элементам массива
   (dotimes (i (car l-arr))
     (dotimes (j (cadr l-arr))
       (dotimes (k (caddr l-arr))
           ;;; задаём переменной v значение элемена
         (setf v (aref arr i j k))
           ;;; устан 'p' значение хвоста списка new-l после текущего элемента с условием равества строке
         (setf p (assoc v new-l
                            :test #'string=))
           ;;; при ненулевом значении 'p' пушим в new-l значение элемента и ключ либо увеличиваем значение ключа на единицу и пушим в new-l
         (if (null p) (push (cons v 1) new-l) (push (cons v (+ 1 (cdr p))) new-l)))))
      ;;;; apply выводит максимальное значение второго элемента пары, из ассоциатинвого списка new-l
   (apply #'max (mapcar #'cdr new-l))))
; выводим значение функции с массивом взятом из потока ввода
(print (max-often arr))
