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

       01 DADOS-ALUNO 5 NOME-ALUNO PIC X(10).

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

       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 2
               DISPLAY "Digite o nome da turma: "
               ACCEPT NOME-TURMA(I)

           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 3
               DISPLAY "DIGITE O NOME DO ALUNO " J ": "
               ACCEPT NOME-ALUNO(I,J)

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


       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 2
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 3
               IF NOME-ALUNO(I,J) = NOME-PROCURADO
                   MOVE "S" TO ENCONTRADO
                   DISPLAY "Aluno encontrado: " NOME-ALUNO(I,J)
                   DISPLAY "Turma: " NOME-TURMA(I)
               END-IF
           END-PERFORM
       END-PERFORM

       IF ENCONTRADO = "N"
            DISPLAY "Aluno nâo encontrado!"
       END-IF

       STOP RUN.
       END PROGRAM aula5.
