(define (problem scheduling-instance)
  (:domain building-scheduling)
  (:objects
    inhabitant1 inhabitant2 inhabitant3 - inhabitant
    room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room
    t9 t915 t10 t1015 - time
  )
  (:init
    ;; Room assignments
    (assigned-room inhabitant1 room1)
    (assigned-room inhabitant2 room2)
    (assigned-room inhabitant3 room3)
    
    ;; Available time slots
    (available t9)
    (available t915)
    (available t10)
    (available t1015)
    
    ;; Inhabitants' possible arrival times
    (can-arrive inhabitant1 t9)
    (can-arrive inhabitant1 t915)
    (can-arrive inhabitant2 t9)
    (can-arrive inhabitant3 t10)
    (can-arrive inhabitant3 t1015)
  )
  (:goal (and
    (setup inhabitant1)
    (setup inhabitant2)
    (setup inhabitant3)
  ))
)
