(define (problem scheduling-instance-extended)
  (:domain building-scheduling-extended)
  (:objects
    inhabitant1 inhabitant2 - inhabitant
    room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room
    t9 t915 t10 t1015 t11 t1115 - time
  )
  (:init
    ;; Room assignments
    (assigned-room inhabitant1 room1)
    (assigned-room inhabitant2 room2)
    
    ;; Available time slots
    (available t9)
    (available t915)
    (available t10)
    (available t1015)
    (available t11)
    (available t1115)
    
    ;; Inhabitants' possible arrival times
    (can-arrive inhabitant1 t9)
    (can-arrive inhabitant1 t915)
    (can-arrive inhabitant2 t10)
    (can-arrive inhabitant2 t1015)
    
    ;; Initially, no room is unlocked and the maintenance worker is not at any room.
  )
  (:goal (and
    (setup inhabitant1)
    (setup inhabitant2)
  ))
)
