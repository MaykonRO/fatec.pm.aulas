      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. aula3-2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 NOME-PACIENTE PIC X(20).
       01 IDADE-PACIENTE PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM BOAS-VINDAS.
            PERFORM LE-DADOS.
            PERFORM EXIBE-DADOS.

            DISPLAY "ANTES DO FIM DO PROGRAMA"
            STOP RUN.

       BOAS-VINDAS.

           DISPLAY "BEM VINDO AO COBOL".
           DISPLAY "APOS OS BOAS VINDAS DENTRO DO BOAS BOAS-VINDAS".

       LE-DADOS.

           DISPLAY "DIGITE O NOME DO PACIENTE".
           ACCEPT NOME-PACIENTE.

           DISPLAY "DIGITE A IDADE DO PACIENTE".
           ACCEPT IDADE-PACIENTE.

       EXIBE-DADOS.

           DISPLAY "NOME DO PACIENTE: " NOME-PACIENTE.
           DISPLAY "IDADE DO PACIENTE: " IDADE-PACIENTE.

       END PROGRAM aula3-2.
