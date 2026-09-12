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

       01 OPCAO PIC 9(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE 1 TO OPCAO.

            PERFORM UNTIL OPCAO = 0
            DISPLAY "MENU DE ACESSO"
            DISPLAY "DIGITE: "
            DISPLAY "1 PARA CADASTRAR"
            DISPLAY "2 PARA CONSULTAR"
            DISPLAY "0 PARA SAIR"
            ACCEPT OPCAO

            EVALUATE OPCAO
            WHEN 1
               DISPLAY "CADASTRAR CLIENTE: "
            WHEN 2
               DISPLAY "CONSULTAR: CLIENTE: "
            WHEN 0
               DISPLAY "ENCERRANDO ..."
            WHEN OTHER
               DISPLAY "OPCAO INVALIDA"

            END-PERFORM.
            STOP RUN.
       END PROGRAM aula3c.
