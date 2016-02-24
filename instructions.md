1. Make a class called Match with a field for ed (the edit distance) and a String field for the word
2. Add a 2 parameter constructor for convenience.
1. Implement the Comparable interface. I had to pass the parameter to the compareTo methos as the superclass type Object and then cast it to get the program to compile. 
3. In the findClosest method, create an ArrayList of type Match. Call it matches.
4. In findClosest, use a for loop (or a foreach loop) to iterate through the words ArrayList and calculate the edit distance between the word and the toFind parameter. Each iteration, create a new instance of Match and add it to the matches ArrayList.
5. Sort the matches ArrayList. Read the article I linked to which explains how to do this
5. Create a String array of size the parameter howMany
1. Write a for loop to copy howMany elements from the sorted ArrayList into the array
1. Return the array
1. In the main method, instead of checking the String, check the returned array at position 0 for an exact match
1. If there is no match, then write a for loop to iterate through the returned array and print out each of the elements
1. Replace the condition check at the end of the do-while loop with an if statement that terminates the loop if quit was pressed.   