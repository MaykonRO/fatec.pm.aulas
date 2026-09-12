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

       01 TABELA0ESCOLA.
           05 TURMA OCCURS 2 TIMES.
               10 NOME-TURMA PIC X(20).

               10 DADOS-ALUNO OCCURS 3 TIMES.
                   15 NOME-ALUNO PIC X(30).
                   15 NOTA-ALUNO PIC 99V99.

       01 I PIC 9.
       01 J PIC 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * TRABALHANDO COM MATRIZES
      *
      *

            PERFORM VARYING I FROM 1 BY 1 UNTIL I > 2
               DISPLAY "Digite o nome da turma: "
               ACCEPT NOME-TURMA(I)

                   PERFORM VARYING J FROM 1 BY 1 UNTIL J > 3
                       DISPLAY "DIGITE O NOME DO ALUNO " J ": "
                       ACCEPT NOME-ALUNO(I,J)

                       DISPLAY "DIGITE A NOTA DO ALUNO " J ": "
                       ACCEPT NOTA-ALUNO(I,J)
                   END-PERFORM
            END-PERFORM


            DISPLAY "LISTA DE ALUNOS"
            DISPLAY TURMA(1)
            DISPLAY TURMA(2)
            STOP RUN.
       END PROGRAM aula5.

'
