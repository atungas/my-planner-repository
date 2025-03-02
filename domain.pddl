(define (domain snake)
  (:requirements :typing)
  (:types position direction)
  (:predicates
    (adjacent ?from ?to - position ?dir - direction)
    (clear ?pos - position)
    (head ?pos - position)
    (body ?pos - position)
    (food ?pos - position)
  )

  (:action move
    :parameters (?from ?to - position ?dir - direction)
    :precondition (and
      (head ?from)
      (adjacent ?from ?to ?dir)
      (clear ?to))
    :effect (and
      (not (head ?from))
      (head ?to)
      (body ?from)
      (not (clear ?to))
      (clear ?from))
  )

  (:action eat
    :parameters (?from ?to - position ?dir - direction)
    :precondition (and
      (head ?from)
      (adjacent ?from ?to ?dir)
      (food ?to))
    :effect (and
      (not (head ?from))
      (head ?to)
      (body ?from)
      (not (food ?to))
      (not (clear ?to)))
  )
)

