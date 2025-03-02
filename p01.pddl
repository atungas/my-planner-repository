(define (problem snake-p01)
  (:domain snake)
  (:objects
    pos1 pos2 pos3 pos4 pos5 pos6 - position
    north south east west - direction)
  (:init
    ; Define adjacency between positions
    (adjacent pos1 pos2 east)
    (adjacent pos2 pos1 west)
    (adjacent pos2 pos3 east)
    (adjacent pos3 pos2 west)
    (adjacent pos3 pos4 east)
    (adjacent pos4 pos3 west)
    (adjacent pos4 pos5 east)
    (adjacent pos5 pos4 west)
    (adjacent pos5 pos6 east)
    (adjacent pos6 pos5 west)

    ; Initial snake position
    (head pos1)
    (clear pos2)
    (clear pos3)
    (clear pos4)
    (clear pos5)
    (food pos6)

    ; Define directions (if needed)
  )
  (:goal
    (head pos6))
)

