(define (domain cleaner)
    (:predicates (room ?r)
                (basket ?b)
                (have_basket ?r)
                (have_socks ?r)
                (robot ?robot)
                (have_robot ?r)                    
                (dirty ?r)
                (clean ?r)
                (fullPower ?robot)
                (full_of_socks ?robot)
                (have_charging ?r)
                )
    (:action washing
        :parameters(?robot ?r)
        :precondition  
            (and  
                (not(have_socks ?r))
                (dirty ?r)
                (have_robot ?r)
                (fullPower ?robot)
            )
        :effect  
            (and 　　　　　　　　　　　　　　　　　　　
                (clean ?r)
                (not　　
                    (dirty ?r)
                )
                (not
                    (fullPower ?robot)
                )
            )
    )

    (:action  charging
        :parameters(?robot ?r)                     
        :precondition 
            (and 　　
                (robot ?robot)
                (have_robot ?r)
                (have_charging ?r)
                (not (fullPower ?robot))
            )
        :effect 
            (fullPower ?robot)
    )

    (:action  move
        :parameters (?from ?to ?robot)
        :precondition 
            (and 
                (dirty ?to)
                (clean ?from)
                (room ?from) 
                (room ?to) 
                (have_robot ?from)
                (fullPower ?robot)
            )
        :effect 
            (and 
                (have_robot ?to)
                (not 
                    (have_robot ?from)
                )
            )
    )
    (:action  move_to_charging
        :parameters (?from ?to ?robot)
        :precondition 
            (and 
                (have_charging ?to)
                (robot ?robot)  
                (room ?from) 
                (room ?to) 
                (have_robot ?from)
                (not
                    (fullPower ?robot)
                )
            )
        :effect 
            (and 
                (have_robot ?to)
                (not 
                    (have_robot ?from)
                )
            )
    )
     (:action  take_socks
        :parameters (?r ?robot)
        :precondition 
            (and 
                (robot ?robot)  
                (not
                    (full_of_socks ?robot)
                )
                (have_socks ?r)
                (have_robot ?r)
            )
        :effect 
            (and 
                (full_of_socks ?robot)
                (not 
                    (have_socks ?r)
                )
            )
    )
    (:action  drop_socks_in_basket
        :parameters (?r ?robot)
        :precondition 
            (and 
                (robot ?robot)  
                (full_of_socks ?robot)
                (have_basket ?r)
                (have_robot ?r)
            )
        :effect 
            (and 
                (not (full_of_socks ?robot)
            )
    )
    )
    (:action  move_filled_of_socks_to_room_with_basket
        :parameters (?from ?to ?robot)
        :precondition 
            (and 
                (robot ?robot)  
                (full_of_socks ?robot)
                (not(have_basket  ?from))
                (have_robot ?from)
                (room ?from) 
                (room ?to)
                (have_basket  ?to)
            )
        :effect 
            (and 
                (have_robot ?to)
                (not 
                    (have_robot ?from)
                )
            )
    )
    
    
)