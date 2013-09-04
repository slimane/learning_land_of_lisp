;;; define global variables
(defvar *min*)
(defvar *max*)


;;; initialize global variables
(defun init_min(num) (defparameter *min* num))
(defun init_max(num) (defparameter *max* num))
(defun init_game(min max) (init_min min) (init_max max) 'initialize)


;;; guess player's picked number
(defun guess-my-number()
    (ash (+ *min* *max*) -1)
)



;;; set range smallest
(defun smaller()
    (setf *max* (1- (guess-my-number)))
    (guess-my-number)
)


;;; set range biggest
(defun bigger()
    (setf *min* (1+ (guess-my-number)))
    (guess-my-number)
)


;;; complete game
(defun correct() "complete")
(defun exactly() (correct))
(defun right() (correct))





;;; initialize and start game
(defun start-guess-my-number()
    (init_game 1 5000)
    (guess-my-number)
)


(flet (
       (plus_five (num)
            (+ num 5))
       (plus_ten (num)
            (+ num 10))
       (plus_one_hundred (num)
            (+ num 100))
       )
    ( plus_one_hundred (plus_ten (plus_five 8)))
)
