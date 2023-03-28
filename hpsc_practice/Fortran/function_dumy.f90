program fc1
        implicit none
        real(kind=8) :: y=2,z
        real,external ::f


        z=f(y)
        print *,"z = ",z
end program fc1

real  function f(x)
        implicit none
        real (kind=8)::x
        f = x**2
end function f
