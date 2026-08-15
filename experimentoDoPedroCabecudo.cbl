       PROGRAM-ID. experimentoDoPedroCabecudo.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 VALOR-1 PIC A(02).
       01 VALOR-N1 PIC 9(02) VALUE ZERO.
       01 VALOR-2 PIC 9(02) VALUE ZERO.
       01 VALOR-3 PIC 9(02) VALUE ZERO.
       01 TOTAL-GERAL PIC S9(06)V9 VALUE ZERO.
       01 TOTAL1 PIC S9(06)V9 VALUE ZERO.
       01 TOTAL-EDIT PIC -Z(05)9.99 VALUE ZERO.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Digite o primeiro valor".
            ACCEPT VALOR-1.

            MOVE FUNCTION NUMVAL(VALOR-1) TO VALOR-N1

            DISPLAY "Digite o segundo valor".
            ACCEPT VALOR-2.

            COMPUTE TOTAL1 = (VALOR-N1 + VALOR-2) * (VALOR-N1 * VALOR-2).

            DISPLAY "Digite o terceiro valor"
            ACCEPT VALOR-3

            COMPUTE TOTAL-GERAL = TOTAL1 / VALOR-3.

            MOVE TOTAL-GERAL TO TOTAL-EDIT
            DISPLAY "Total: " TOTAL-EDIT.
            STOP RUN.
       END PROGRAM experimentoDoPedroCabecudo.
