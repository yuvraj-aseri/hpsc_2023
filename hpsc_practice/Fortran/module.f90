module circle_mod
        implicit none
        real(kind=8),parameter :: pi= 3.14

contains

        real(kind=8) function area(r)
                real(kind=8),intent(in) :: r
                area = pi*r*r
        end function area

        real(kind=8) function circumference(r)
                real(kind=8),intent(in)::r
                circumference = 2.d0*pi*r
        end function circumference
end module circle_mod
