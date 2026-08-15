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
       01 NUMERO1 PIC 9(4).
       01 NUMERO2 PIC 9(4).
       01 RESULTADO PIC 9(5).
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

            PERFORM CALC-PROCEDURE.


            STOP RUN.

       CALC-PROCEDURE.
            DISPLAY "Tem que somar 1 + 1"

            DISPLAY "digite um numero ate 9999".
            ACCEPT NUMERO1.

            DISPLAY "digite um numero ate 9999".
            ACCEPT NUMERO2.

            ADD NUMERO1 TO NUMERO2 GIVING RESULTADO.

            DISPLAY "O resultado da operacao e' " RESULTADO.

           STOP RUN.
       END PROGRAM aula2.
      * comando para remover o meu repositorio do git
      * vai na raíz do repositorio  e digita isso no cmd
      * git remote remove origin
