program ifelse
        implicit none 
        real(kind=8) ::x
        integer ::i

        i= 3

        if(i<=2) then
                print *,"I is less than or equal to 2"
        elseif (i/=5) then 
                print *,"I is greater than 2, not equal to 5"
        else
                print *,"Fuck you bitch"
        endif

end program ifelse
