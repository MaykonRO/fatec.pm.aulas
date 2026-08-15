      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. aula2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NOME PIC X(30).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            DISPLAY "MEI LEGAL"

            DISPLAY "Digite o seu nome".
            ACCEPT NOME.

            DISPLAY "Ola" NOME.

            STOP RUN.

       CALC-PROCEDURE.
            DISPLAY "Tem que somar 1 + 1"

           STOP RUN.
       END PROGRAM aula2.
