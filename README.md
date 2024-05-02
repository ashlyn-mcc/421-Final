AWK Notes

**History**


Awk was originally written in 1977 at AT&T Bell Laboratories. A new version in 1985 optimized the language making it a more powerful tool. Awk is named after it's designers: Alfred Aho, Peter Weinberger, and Brian Kernighan. 


**About/Uses**

Awk is a data driven scripting language used to extract or transform text. Awk’s core function is to scan files for lines containing specific patterns and execute designated actions on those lines. It iterates through input lines until it reaches the end of the input files. It’s a useful tool for people who need to extract and analyze structured textual data. The most common implementation is GNA awk, but there are others.


Core Components:
- Data driven
    - You provide awk with rules for what to do with the data, rather than explicitly detailing how to process each line of data.
- Field based 
    - Awk can easily work with structured data because it treats input data as a series of fields rather than just a continuous stream of characters.
- Pattern processing
    - Awk operates by matching patterns in the input data and then executing actions based on those patterns.



**Data Processing**


Data is broken up into records. By default a record is each ine in the file. Records are broken up into fields. Fields are the individual data elements within a line of a text file. Fields are distinguished by field separators (white space, comma, etc)


**Pattern/Actions**

- Pattern: Specifies conditions or rules for selecting lines of input data.
    - Can be regular expressions, string literals, numeric conditions, or combinations of these.


- Action: Specifies what AWK should do when a line of input matches the pattern.
    - Can include printing the line, performing calculations, setting variables, or executing user-defined functions.


**Associative Arrays**


Use key value pairs to index array. 
- Keys: Unique identifiers used to access values in the array (can be strings or numbers).
- Values: Data associated with each key.


**Syntax & Semantics**

- Reserved words incude: BEGIN, END, FS
- Curly braces are used to signify start and end of blocks
- if statements are similar to java (if ____ == ______){ }
- for loop is also similar to java (let i = __ ; i < ____; i++){}
- Dollar sign followed by a number $__ is used to obtain a certan field within a record
- A for loop accessing array elements like: for (course in courseGrades) doesn't store the element in course, course is the key that has to be used as an index to get the element within the array
- uses print like Python, but doesn't require parenthesis


Pattern-action pairs are written as: 

pattern { action }

Where the pattern is encosed with forward slashes like so:

/4.00/ { print $1 }


**Code Overview:**
- Data
    - scoresMain.txt : has 25 student semester grades downloaded from Canvas
    - scoresPartial.txt: has some of the original 25 scores 
    - courseGrades.txt: lists a few courses and corresponding grades
- AWK programs
    - attendance.awk : checks student attendance scores against the value 90
    - perfectScore.awk : analyzes student scores to find any perfect scores
    - associativeArraySimple.awk : demos using key value pairs in an associative array
    - assignmentAverage: calcuates the average of a student's 4 highest assignment grades


