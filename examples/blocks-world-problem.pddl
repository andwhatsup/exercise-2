(define (problem blocks-world-problem)
(:domain blocks-world-domain)
(:objects A B C - block)
(:INIT (CLEAR B) (ONTABLE A) (ONTABLE B) (ON C A) (CLEAR C) (HANDEMPTY))
(:goal (AND (ON B C) (ON A B) (ONTABLE C) ))
)