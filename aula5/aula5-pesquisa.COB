      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. aula5.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 TABELA-ALUNO.
           5 NOME-ALUNO PIC X(20) OCCURS 5 TIMES.

       01 NOME-PROCURADO PIC X(20).
       01  ENCONTRADO PIC X VALUE "N".

       01 I PIC 9.
       01 J PIC 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * TRABALHANDO COM MATRIZES
      * PESQUISA EM MATRIZES
      *

       MOVE "N" TO ENCONTRADO

       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
           DISPLAY "DIGITE O NOME DO ALUNO " I ": "
           ACCEPT NOME-ALUNO(I)

       END-PERFORM

       DISPLAY "____________________________"
       DISPLAY "____________________________"
       DISPLAY "____________________________"
       DISPLAY "_________PESQUISA___________"
       DISPLAY "____________________________"

       DISPLAY "Qual aluno deseja pesquiasr: "
       ACCEPT NOME-PROCURADO


       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
           IF NOME-ALUNO(I) = NOME-PROCURADO
               MOVE "S" TO ENCONTRADO
               DISPLAY "Aluno encontrado: " NOME-ALUNO(I)
           END-IF
       END-PERFORM

       IF ENCONTRADO = "N"
            DISPLAY "Aluno nâo encontrado!"
       END-IF

       STOP RUN.
       END PROGRAM aula5.
