program scientific_calculator
    implicit none
    integer :: choice
    real :: num1, num2, result

    ! Display the menu
    print *, "Scientific Calculator"
    print *, "1. Addition"
    print *, "2. Subtraction"
    print *, "3. Multiplication"
    print *, "4. Division"
    print *, "5. Square Root"
    print *, "6. Power"
    print *, "Enter your choice (1-6):"
    read *, choice

    ! Execute the chosen operation
    select case (choice)
    case (1)
        ! Addition
        print *, "Enter two numbers:"
        read *, num1, num2
        result = num1 + num2
        print *, "Result: ", result

    case (2)
        ! Subtraction
        print *, "Enter two numbers:"
        read *, num1, num2
        result = num1 - num2
        print *, "Result: ", result

    case (3)
        ! Multiplication
        print *, "Enter two numbers:"
        read *, num1, num2
        result = num1 * num2
        print *, "Result: ", result

    case (4)
        ! Division
        print *, "Enter two numbers:"
        read *, num1, num2
        if (num2 == 0.0) then
            print *, "Error: Division by zero is not allowed."
        else
            result = num1 / num2
            print *, "Result: ", result
        end if

    case (5)
        ! Square Root
        print *, "Enter a number:"
        read *, num1
        if (num1 < 0.0) then
            print *, "Error: Cannot compute the square root of a negative number."
        else
            result = sqrt(num1)
            print *, "Result: ", result
        end if

    case (6)
        ! Power
        print *, "Enter the base and the exponent:"
        read *, num1, num2
        result = num1**num2
        print *, "Result: ", result

    case default
        print *, "Invalid choice. Please select a number between 1 and 6."
    end select

end program scientific_calculator
