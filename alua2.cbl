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
       01 SOBRENOME PIC A(20).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            DISPLAY "MEI LEGAL"
            DISPLAY ""
            DISPLAY "************************************"
            DISPLAY "Digite o seu nome".
            ACCEPT NOME.
            DISPLAY "sobrenome".
            ACCEPT SOBRENOME.

            DISPLAY "Ola " NOME SOBRENOME.

            STOP RUN.

       CALC-PROCEDURE.
            DISPLAY "Tem que somar 1 + 1"

           STOP RUN.
       END PROGRAM aula2.
