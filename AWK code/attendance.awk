 # Checks attendance scores 
 
 # Set the field separator to comma & space
BEGIN {
    FS = ", "      
}


{
    # If the attendance score (field 9) is less than 90
    if ($9 < 90) {  

        # Print the name of the student (field 1)
        print $1   
    }
}



