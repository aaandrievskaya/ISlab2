(define (problem solve)
    (:domain cleaner)
    (:objects 
        room1 room2 room3 room4 socks_basket robot 
    )
    (:init
        (room room1)
        (room room2) 
        (room room3) 
        (room room4) 
        (robot robot)
        (basket socks_basket)
        
        (have_basket room2)
        (dirty room1)
        (dirty room2)
        (dirty room3)
        (dirty room4)
        (have_robot room1)
        (fullPower robot)
        (have_charging room1)

    )
    (:goal                                               
        (and
            (clean room1)
            (clean room2)
            (clean room3)
            (clean room4)
            (fullPower robot)
            
        )
    )
)