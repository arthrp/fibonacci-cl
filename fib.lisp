(defun fibonacci (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fibonacci (- n 1)) 
              (fibonacci (- n 2))))))

(defun main ()
  (defvar num)
  (format t "Calculating fibonacci sequence member number ~A~%" (nth 1 sb-ext:*posix-argv*))
  (setf num (nth 1 sb-ext:*posix-argv*))
  (format t "Result: ~A~%" (fibonacci (parse-integer num)))

  (sb-ext:quit))

(main)