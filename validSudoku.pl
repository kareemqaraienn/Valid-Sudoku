sudoku([[2,1,4,3],[4,3,2,1],[1,2,3,4],[3,4,1,2]]).
sudoku([[2,1,4,3],[4,3,2,1],[1,2,3,3],[3,4,1,2]]).



different([]).
different([H|T]):-
    \+member(H,T),
    different(T).


extract4Columns([[R1C1,R1C2,R1C3,R1C4],[R2C1,R2C2,R2C3,R2C4],[R3C1,R3C2,R3C3,R3C4],[R4C1,R4C2,R4C3,R4C4]],[[R1C1,R2C1,R3C1,R4C1],[R1C2,R2C2,R3C2,R4C2],[R1C3,R2C3,R3C3,R4C3],[R1C4,R2C4,R3C4,R4C4]]).


extract4Quadrants([[R1C1,R1C2,R1C3,R1C4],[R2C1,R2C2,R2C3,R2C4],[R3C1,R3C2,R3C3,R3C4],[R4C1,R4C2,R4C3,R4C4]],[[R1C1,R1C2,R2C1,R2C2],[R1C3,R1C4,R2C3,R2C4],[R3C1,R3C2,R4C1,R4C2],[R3C3,R3C4,R4C3,R4C4]]).



allDifferents([]).
allDifferents([H|T]):-
    different(H),
    allDifferents(T).


checkSudoku(S):-
    extract4Columns(S,M),
    extract4Quadrants(S,N),
    allDifferents(S),
    allDifferents(M),
    allDifferents(N).

