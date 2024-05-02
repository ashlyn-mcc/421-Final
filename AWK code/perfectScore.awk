# Set the field separator to comma & space

BEGIN {
    FS = ", "  
}

{
   
   # Iterates through assignments 1 through 6 (Fields 2 through 7)
    for (i = 2; i <= 7; i++) {
       
       # If student got a perfect score
        if ($i == 4.00) {

            # Print there name and which assignment they got a perfect score on
            print "Student", $1, "got 4.00 on #", i - 1

        }
    }
}



