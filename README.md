# Mini-Sudoku Solution
This is the solution to Assignment 2 of the CSI2120 Programming Paradigms course offered by the School of Electrical Engineering and Computer Science at the University of Ottawa during the Winter 2022 semester.

## Description
The program implements a solution to the Mini-Sudoku problem, which consists of a 4x4 matrix in which each entry is one of the four numbers 1, 2, 3, or 4. To be a valid Sudoku, each row, each column, and each of the four quadrants must contain different numbers.

The program checks if a given Sudoku is valid by verifying if all of its rows, columns, and quadrants contain different numbers.

The program has the following files:

- sudoku.pl: This is the main file containing the predicates to solve the Mini-Sudoku problem.
- tests.pl: This file contains the test cases for the predicates in sudoku.pl.

## Usage
To run the program, load sudoku.pl into a Prolog interpreter and use the sudoku/1 predicate, passing in a 4x4 matrix as an argument. For example:

```
?- [sudoku].
true.

?- sudoku([[2,1,4,3],[4,3,2,1],[1,2,3,4],[3,4,1,2]]).
true.

?- sudoku([[2,1,4,3],[4,3,2,1],[1,2,3,3],[3,4,1,2]]).
false.
```

## Predicates
The following predicates are defined in sudoku.pl:

- different/1: This predicate is true if all the numbers in the given list are different.
- extract4Columns/2: This predicate extracts the four columns of the 4x4 matrix.
- extract4Quadrants/2: This predicate extracts the four quadrants of the 4x4 matrix.
- allDifferent/1: This predicate is true if all the sublists in the given list of lists have different numbers.
- checkSudoku/1: This predicate is true if the given 4x4 matrix is a valid Mini-Sudoku solution.
