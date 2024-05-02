BEGIN {
    FS = ", ";  
}

{  
    
    # Read the 6 assignment scores and store them in an array
    for (i = 2; i <= 7; i++) {
        scores[i-2] = $i;  # Store scores in the array
    }

    # Sort the scores inside the array by bubble sort (had to look up how to sort)
    for (j = 1; j <= 5; j++) {
        for (k = 1; k <= 6 - j; k++) {
            if (scores[k] < scores[k+1]) {
                temp = scores[k];
                scores[k] = scores[k+1];
                scores[k+1] = temp;
            }
        }
    }

    # Calculate the sum of the top 4 assignment scores
    sumOfScores = 0;
    for (num = 1; num <= 4; num++) {
        sumOfScores += scores[num];
    }

    # Divide the sum by the number of scores to get the average
    averageOfScores = sumOfScores / 4;

    # Print student name and the average
    print $1 ", " averageOfScores;
    
    delete scores;

}
