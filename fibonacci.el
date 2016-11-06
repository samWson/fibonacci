
;; recursive implementation (O(2^n)) (lots of extra computation, but simple)
;; if the index is 1 or 2, just returns 1, otherwise returns the
;; sum of the num-1-th and num-2-th fibonacci number.

(defun fib1 (num)
  "Return the num-th number in the fibonacci sequence"
  (if (< num 3)
      1
    (+ (fib1(- num 1)) (fib1(- num 2)))))

;; iterative implementation (O(n))
;; much faster than above for large values of num. stores the last two
;; computed values and iterates until num is reached.

(defun fib2 (num)
  "Return the num-th number in the fibonacci sequence"
  (if (< num 3)
      1
    (let ((i 3) (first 1) (second 1) (temp 0))
      (while (<= i num)
	(setq temp (+ first second))
	(setq second first)
	(setq first temp)
	(setq i (+ i 1)))
      first)))

