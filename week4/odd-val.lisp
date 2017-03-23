(defun count-odd (lst) ; считаем нечетные числа в списке
    (let ((count 0)(odds-list nil)) ; объявл переменные
        (dolist(i lst) ; проходим по списку
            (when(oddp i) ;когда элемент нечетный
                (push i odds-list) ; пушим его в новый список 
                (incf count))) ; увеличиваем счётчик
    (values count(nreverse odds-list)))) ; форма let вызов функции values которой передаётся
                                        ; кол-во нечетных эл-ов и обращённый список nreverse 

