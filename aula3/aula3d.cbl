      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. aula3c.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 I PIC 9(2).
       01 TABUADA PIC 9(2).
       01 RESULTADO PIC 9(2).


       PROCEDURE DIVISION.

       MAIN-DIVISION.

       MOVE 0 TO I.
       MOVE 2 TO TABUADA.

       DISPLAY "TABUADA DO 2".

       PERFORM VARYING TABUADA FROM 2 BY 1 UNTIL TABUADA > 10

              PERFORM TABUADA-UNTIL-10
              DISPLAY "--"
       END-PERFORM.

            STOP RUN.

       TABUADA-UNTIL-10.

           PERFORM VARYING I FROM 0 BY 1 UNTIL I > 10

           COMPUTE RESULTADO = TABUADA*I
           DISPLAY TABUADA " X ", I , " = ", RESULTADO

       END-PERFORM.


       END PROGRAM aula3c.
