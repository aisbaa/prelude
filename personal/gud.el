(require 'window-layout)

(defun aisbaa-gdb-layout ()
  "Creates gdb window layout I prefer."
  (wlf:layout
   '(- (:left-size-ratio 0.6)
       (| (:left-size-ratio 0.5)
          gud
          (- (:upper-size-ratio 0.5)
             locals
             stack))
       (- (:upper-size-ratio 0.5)
          io
          breakpoints))
   '((:name gud :buffer "*gud*")
     (:name locals :buffer "*locals of *")
     (:name stack :buffer "*stack frames of *")
     (:name io :buffer "*input/output of *")
     (:name breakpoints :buffer "*breakpoints of *")
     )))
