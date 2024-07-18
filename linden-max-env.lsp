;;; Lisp Code for then linden-max-env subpatcher
;; - this file is running on the slippery chicken package from michael
;;edwards (:sc is a dependencie)
;; - first install :sc then run this file and use the (linden-max-env)
;;subpatcher in max
;; - you can also run my butter-milk package (:bm) which is based on :sc
;; - questions? message me: philipp@von-neumann.com

(in-package :sc)
;(in-package :bm)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Vergleich mit Algen Beispiel https://en.wikipedia.org/wiki/L-system 
#|
(let ((lfl (make-l-for-lookup
	    'ls
	    '((1 ((A))) (2 ((B))))
	    (rule-1 '(1 2)))))
  (do-simple-lookup lfl 1 8))
|#
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Overview - Envelopes from Lindenmayer System
;;;; Generate Data from a List
;; -The output should  as flexibly as possible. Here, I will first
;; focus on creating envelopes that are to be sent to Max via OSC.
;; The next step could be generating MIDI notes, and a further step
;; could be a standalone application that generates MIDI files.
;; - Based on a list, in this case a procession list, data for a
;; Lindenmayer system should be created.
;; - To make the data a bit more complex and varied, the values from
;; the input list will be treated as data pairs:
;; (procession 20 5) => (1 2 1 2 3 3 4 3 3 5 1 4 1 5 2 4 2 4 5 1)
;; data-pairs => ((1 2) (2 1) (1 2) (2 3) (3 3) (3 4) ...)
;; - The data pairs will be interpreted and scaled for the Y-values
;; between a minimum and maximum.
;; - The X-values are also derived by interpreting the data pairs,
;; but always have a minimum of 128 and a maximum of 4096 points.
;; The X-value is a distance from the previous point to prevent
;; uniform distribution of points. The downside is that the X-values
;; must be reinterpreted for the entire envelope each time an envelope
;; is generated.
;; - For further variance in the generated envelopes, C-values, which
;; describe the curvature between two points, will also be created.
;; - Generating C-values will be optional if only linear envelopes are
;; desired.
;;;; Tasks and Required Functions for Data Generation
;; - Generate data pairs from any list or procession list.
;; - Interpret the data pairs for the Y-values.
;; - Interpret the data pairs for the X-values.
;; - Interpret the data pairs for the C-values.
;; - Create data duos or triplets if C-values are also desired.
;;; Populate the Lindenmayer System
;; - The generated data needs to be formatted for the Lindenmayer system
;; (here, make-l-for-lookup from the :sc package)
;; - Elements with indices must be generated from the data triplets
;; and duos.
;; - A set of rules needs to be created; various sets of rules are
;; needed to generate more or less complex results.
;;; Tasks and Required Functions for the Lindenmayer System
;; - Format the data as elements for make-l-for-lookup.
;; - Create a few rule functions.
#| formatting example
(make-l-for-lookup 'l-sys
                   '((1 ((a)))   ; elements 
                     (2 ((b))))
                   '((1 (1 2))   ; rules
                     (2 (1))))
|#
;;; Additional Helper Functions
;; - Function for updating the X-values

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Genrate data from a list
;;;; make data-pairs
(defun data-pairs (ls)
  (loop for e in ls
	for i from 0 below (1- (length ls))
	collect (append
		 (list e (nth (1+ i) ls))) into new-lst
	finally (return (append new-lst
				(list (list (car (last ls)) (first ls)))))))

#|
(data-pairs (procession 10 '(5 3 4 2 1)))
=> ((5 3) (3 5) (5 3) (3 4) (4 4) (4 2) (2 4) (4 4) (4 1) (1 5))
|#

;;;; interpret data to x-values
(defun interpret-data-pair-list-to-x-values (data-pair-list)
  (let* ((mini (loop for e in (flatten data-pair-list)
		     minimize e))
	 (maxi (loop for e in (flatten data-pair-list)
		     maximize e)))
    (loop for pair in data-pair-list
	  when (and (eq (first pair) (second pair))
		    (eq (first pair) mini))
	    collect 4096
	  when (and (eq (first pair) (second pair))
		    (eq (first pair) maxi))
	    collect 128
	  when (and (eq (first pair) (second pair))
		    (not (or (eq (first pair) maxi) (eq (first pair) mini))))
	    collect (* (first pair) 128)
	  when (< (first pair) (second pair))
	    collect (+ 128 (round (float (* (/ (first pair) (second pair)) 1024))))
	  when (> (first pair) (second pair))
	    collect (round (float (- 4096 (* (/ (second pair) (first pair)) 1024)))))))
#|
(interpret-data-pair-list-to-x-values (data-pairs (procession 20 4)))
=> (640 3584 640 811 3755 469 3755 4096 384 3584 811 3413 640 3584 811 3413 811
 896 3840 4096)
|#


;;;; helper to trunc a float
(defun trunc-to-point-3 (num)
  (/ (truncate (* num 1000.0)) 1000.0))

;;;; linear scaling function
(defun scale-linear (val min-out max-out min-in max-in)
  (trunc-to-point-3 (float (+ min-out (/ (* (- val min-in)
					    (- max-out min-out))
					 (- max-in min-in))))))

;;;; interpret data to y-values
(defun interpret-data-pair-list-to-y-values (data-pair-list min max)
  (let* ((mini (loop for e in (flatten data-pair-list)
		     minimize e))
	 (maxi (loop for e in (flatten data-pair-list)
		     maximize e)))
    (loop for pair in data-pair-list
	  when (and (eq (first pair) mini)
		    (eq (second pair) mini))
	    collect min
	  when (and (eq (first pair) maxi)
		    (eq (second pair) maxi))
	    collect max
	  when (and (eq (first pair) (second pair))
		    (not (or (eq (first pair) maxi) (eq (first pair) mini))))
	    collect (scale-linear (first pair)
				  min max mini maxi)
	  when (< (first pair) (second pair))
	    collect (scale-linear
		     (scale-linear
		      (/ (+ (first pair) (second pair)) 2)
		      (first pair) (second pair) mini maxi)
		     min max mini maxi)
	  when (> (first pair) (second pair))
	    collect (scale-linear
		     (scale-linear
		      (/ (+ (first pair) (second pair)) 2)
		      (second pair) (first pair) mini maxi)
		     min max mini maxi))))
#|
(interpret-data-pair-list-to-y-values (data-pairs (procession 20 4)) 1 10)
=> (1.498 1.498 1.498 5.5 2.998 2.998 2.998 1 5.5 7.999 5.5 5.5 7.999 7.999 5.5
 5.5 5.5 9.499 5.5 1)
|#

;;;; interpret data to c-values
(defun interpret-data-pair-list-to-c-values (data-pair-list)
  (let* ((mini (loop for e in (flatten data-pair-list)
		     minimize e))
	 (maxi (loop for e in (flatten data-pair-list)
		     maximize e)))
    (loop for pair in data-pair-list
	  when (and (eq (first pair) (second pair))
		    (eq (first pair) maxi))
	    collect 1
	  when (and (eq (first pair) (second pair))
		    (eq (first pair) mini))
	    collect -1
	  when (and (eq (first pair) (second pair))
		    (not (or (eq (first pair) maxi)
			     (eq (first pair) mini))))
	    collect 0
	  when (< (first pair) (second pair))
	    collect (scale-linear (/ (+ (first pair) (second pair)) 2)
				  -1 1 mini maxi)
	  when (> (first pair) (second pair))
	    collect (scale-linear (/ (+ (second pair) (first pair)) 2)
				  -1 1 mini maxi))))

#|
(interpret-data-pair-list-to-c-values (data-pairs (procession 20 4)))
=>(-0.666 -0.666 -0.666 0.0 -0.333 -0.333 -0.333 -1 0.0 0.333 0.0 0.0 0.333 0.333
 0.0 0.0 0.0 0.666 0.0 -1)
|#

;;;; create data-duos or triplets
(defun make-data-packs-for-envs (x-vals y-vals &optional (c-vals nil))
  (if (not (null c-vals))
      (loop for x in x-vals
	    for y in y-vals
	    for c in c-vals
	    collect (append (list x) (list y) (list c)))
      (loop for x in x-vals
	    for y in y-vals
	    collect (append (list x) (list y)))))
#|
(make-data-packs-for-envs '(1 2 3 4) '(a b c d) '(x y z))
=> ((1 A X) (2 B Y) (3 C Z))

(make-data-packs-for-envs '(1 2 3 4) '(a b c d))
=> ((1 A) (2 B) (3 C) (4 D))
|#

;;; Populate Lindenmayer-System - Functions
;;;; format data as elements for make-l-for-lookup
(defun make-elements-for-linden (ls)
  (if (not (listp (car ls)))
      (loop for e in ls
	    for i from 1
	    collect (append (list i (list (list e)))))
      (loop for e in ls
	    for i from 1 to (length ls)
	    collect (append (list i (list e))))))
#| 
(make-elements-for-linden '(a b c d e f))
=> ((1 ((A))) (2 ((B))) (3 ((C))) (4 ((D))) (5 ((E))) (6 ((F))))

(make-elements-for-linden '((a a) (b b) (c c)))
=> ((1 ((A A))) (2 ((B B))) (3 ((C C))))
|#

;;;; Rules for L-System
;;;;; rule-1
;; - classic algae growth rule
;; - A -> A B; B -> A
;; - 1 -> 1 2; 2 -> 1
;; - not creating a big variety of output
(defun rule-1 (ls)
  (if (oddp (length ls))
      (error "input lst to rule-1 is not of an even length, but should
  be: ~a" ls)
      (loop for i from 1 to (length ls)
	    collect (list i (if (oddp i)
				(list i (1+ i))
				(list (1- i)))))))
#|
(rule-1 '(100 101 102 103 104 105))
=> ((1 (1 2)) (2 (1)) (3 (3 4)) (4 (3)) (5 (5 6)) (6 (5)))
|#

;;;;; rule-2
;; - cantor fractal set
;; - A -> ABA; B -> BBB
;; - 1 -> 121; 2 -> 222
;; - not creating a big variety of output
(defun rule-2 (ls)
  (if (oddp (length ls))
      (error "input lst to rule-1 is not of an even length, but should
  be: ~a" ls)
      (loop for i from 1 to (length ls)
	    collect (list i (if (oddp i)
				(list i (1+ i) i)
				(list i i i))))))
#|
(rule-2 '(100 101 102 103 104 105))
=> ((1 (1 2 1)) (2 (2 2 2)) (3 (3 4 3)) (4 (4 4 4)) (5 (5 6 5))
(6 (6 6 6)))
|#

;;;;; rule-3
;; - fractal plant (something like that)
;; - 1x -> 1x(1x-1)(1x+2)1x(1x+1)(1x-1); 2x -> 2x2x
;; - stays at lower indeces with jumps to the top
(defun rule-3 (ls)
  (let* ((helper (lambda (x len-ls)
		   (cond ((< x 1) (- len-ls x))
			 ((> x len-ls) (1+ (mod x len-ls)))
			 (t x))))
	 (len-ls (length ls)))
    (loop for i from 1 to len-ls
	  collect (list i (if (oddp i)
			      (list
			       i
			       (funcall helper (1- i) len-ls)
			       (funcall helper (+ i 2) len-ls)
			       i
			       (funcall helper (1+ i) len-ls)
			       (funcall helper (1- i) len-ls))
			      (list
			       i
			       (funcall helper (* i 2) len-ls)))))))


#|
(rule-3 '(100 101 102 103 104 105))
=> ((1 (1 6 3 1 2 6)) (2 (2 4)) (3 (3 2 5 3 4 2))
(4 (4 3)) (5 (5 4 2 5 6 4)) (6 1)))
|#

;;;; update x-distances to final x-values
(defun update-x-values-and-flatten (ls)
  (loop for seg in ls
	for x = 0 then y
	for y = (first seg) then (+ y (first seg))    	
	collect (append (list x)
			(list (second seg))
			(list (third seg)))
	  into new-ls
	finally (return (flatten new-ls))))

;;; test function without interpreting data
#|
(let* ((data (data-pairs (procession 30 '(5 4 3 2 1))))
       (elements (make-elements-for-linden data))
       (rules (rule-3 data))
       (env (make-l-for-lookup 'l-sys
			       elements
			       rules)))
  (format t "elements: ~a~%" elements)
  (format t "rules: ~a~%" rules)
  (format t "l-sequence: ~a~%" (get-l-sequence env 1 80))
  (format t "look-up: ~a~%" (do-simple-lookup env 1 80)))
|#

;;; linden-env with flexible data input
(defun linden-env (min max axiom num-of-segs data-pairs)
  (Let* ((elements (make-elements-for-linden data-pairs))
	 (rules (rule-3 data-pairs))
	 (l-object (make-l-for-lookup 'l-sys elements rules))
	 (look-up (do-simple-lookup l-object axiom num-of-segs))
	 (x-vals (interpret-data-pair-list-to-x-values look-up))
	 (y-vals (interpret-data-pair-list-to-y-values
		  look-up min max))
	 (c-vals (interpret-data-pair-list-to-c-values look-up))
	 (envelope (make-data-packs-for-envs x-vals y-vals c-vals)))
    (update-x-values-and-flatten envelope)))
#|
(linden-env 1 10 1 20 (data-pairs (procession 40 5)))
|#

;;; linden-max-env
;; - final max function to call from withing max
(defun linden-max-env (min max axiom num-of-segs)
  (Let* ((data-pairs (data-pairs (procession 40 5)))
	 (elements (make-elements-for-linden data-pairs))
	 (rules (rule-2 data-pairs))
	 (l-object (make-l-for-lookup 'l-sys elements rules))
	 (look-up (do-simple-lookup l-object axiom num-of-segs))
	 (x-vals (interpret-data-pair-list-to-x-values look-up))
	 (y-vals (interpret-data-pair-list-to-y-values
		  look-up min max))
	 (c-vals (interpret-data-pair-list-to-c-values look-up))
	 (envelope (make-data-packs-for-envs x-vals y-vals c-vals)))
    (update-x-values-and-flatten envelope)))
