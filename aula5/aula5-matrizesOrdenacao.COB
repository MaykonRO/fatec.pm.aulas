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

       01 DADOS-ALUNO
           05 NOME-ALUNO PIC X(10) OCCURS 4 TIMES.

       01 NOME-PROCURADO PIC X(20).
       01  ENCONTRADO PIC X VALUE "N".
       01 AUX-NOME PIC X(20).


       01 I PIC 9.
       01 J PIC 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * TRABALHANDO COM MATRIZES
      * PESQUISA EM MATRIZES
      *

       MOVE "N" TO ENCONTRADO
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
               DISPLAY "DIGITE O NOME DO ALUNO " I ": "
               ACCEPT NOME-ALUNO(I)

           END-PERFORM
       END-PERFORM

       DISPLAY TURMA(1)
       DISPLAY TURMA(2)
       DISPLAY "____________________________  "
       DISPLAY "____________________________"
       DISPLAY "____________________________"
       DISPLAY "_________ORDENAÇÃO___________"
       DISPLAY "____________________________"

       DISPLAY "Qual aluno deseja pesquiasr: "
       ACCEPT NOME-PROCURADO


       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 4
               IF NOME-ALUNO(I) > NOME-ALUNO(J)
                   MOVE NOME-ALUNO(I) TO AUX-NOME
                   MOVE NOME-ALUNO(J) TO NOME-ALUNO(I)
                   MOVE AUX-NOME to NOME-ALUNO(J)

               END-IF
           END-PERFORM
       END-PERFORM

       DISPLAY "Lista Ordenada"
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
           DISPLAY NOME-ALUNO(I)
       END-PERFORM.

       STOP RUN.
       END PROGRAM aula5.
