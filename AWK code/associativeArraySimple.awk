{
    # array called courseGrades initialized
    # uses course tite (field 1) as key 
    courseGrades[$1] = $2
}

END {

    # Iterates through each key in the array
    for (course in courseGrades) {

        # prints the course and grade by indexing the array with the key
        print "Course:", course, "\t Grade:", courseGrades[course]

    }
}

