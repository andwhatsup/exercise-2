(define (domain building-scheduling-extended)
  (:requirements :typing)
  (:types inhabitant room time)

  (:predicates
    (can-arrive ?i - inhabitant ?t - time)
    (assigned-room ?i - inhabitant ?r - room)
    (available ?t - time)
    (setup ?i - inhabitant)
  )

  (:action showRoom
    :parameters (?t - time ?i - inhabitant ?r - room)
    :precondition (and 
                    (can-arrive ?i ?t)
                    (assigned-room ?i ?r)
                    (available ?t)
                   )
    :effect (and 
             (setup ?i)
             (not (available ?t))
            )
  )
)
