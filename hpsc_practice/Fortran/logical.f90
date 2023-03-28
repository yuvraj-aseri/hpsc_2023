program logic
        implicit none
        real(kind=8)::x
        integer ::i,k
        logical ::ever_zero

        ever_zero = .false.

        do i=1,10
                k = 3*i -3
               ever_zero = (ever_zero .or. (k==0))
        end do
        if (ever_zero) then
               print *,"kuch to hoga bhai isse"
        else 
               print *,"3*i - 1 is never 0 for i tested"
        end if 
end program logic 
