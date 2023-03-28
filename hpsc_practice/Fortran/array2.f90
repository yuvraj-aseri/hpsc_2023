program arrayops
        implicit none
        real(kind=8),dimension(3,2)::x

        X = reshape((/1,2,3,4,5,6/),(/3,2/))
        print *,X
end program arrayops
