module matrixArthimetric
    implicit none
    private
    public :: vecArth
    
    interface vecArth
        module procedure vecAdd
        module procedure vecSub
    end interface vecArth
    
    contains
      REAL function vecAdd(a, b) result(c)
            real :: a(3), b(3), c(3)
            c = a + b
        end function vecAdd
        
        real function vecSub(a, b) result(c)
            real :: a(3), b(3), c(3)
            c = a - b
        end function vecSub
    
end module matrixArthimetric