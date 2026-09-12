      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. aula3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  WS-CAMPOS-AUXILIARES.
            05 WS-YYYYMMDD PIC X(8).
            05 WS-YYMMDD PIC X(6).
            05 WS-HHMMSS PIC X(6).
            05 WS-DIA-SEMANA PIC 9(1).
            05 WS-ANO-DIA PIC 9(5).
            05 WS-DIA-YYYYDDD PIC 9(7).
            05 WS-DIA PIC 9(3).

       PROCEDURE DIVISION.
           INITIALIZE WS-CAMPOS-AUXILIARES
               REPLACING ALPHANUMERIC BY SPACES
                   NUMERIC BY ZEROES

            ACCEPT WS-DIA FROM DAY YYYYDDD
            DISPLAY "QTD DIAS ESTAMOS NESTE ANO: " , WS-DIA

            ACCEPT WS-DIA-YYYYDDD FROM DAY YYYYDDD
            DISPLAY "QTD DIAS ESTAMOS E O ANO: ", WS-DIA-SEMANA

            ACCEPT WS-YYYYMMDD FROM DATE YYYYMMDD
            DISPLAY "ANO-MES-DIA: ", WS-YYYYMMDD

            ACCEPT WS-YYMMDD FROM DATE
            DISPLAY "ANO-MES-DIA: ", WS-YYMMDD

             ACCEPT WS-YYMMDD FROM DATE
           DISPLAY "ANO-MES-DIA:",WS-YYMMDD

           ACCEPT WS-HHMMSS FROM TIME
           DISPLAY "HORA LOCAL:",WS-HHMMSS

           ACCEPT WS-DIA-SEMANA FROM DAY-OF-WEEK
           DISPLAY "DIA DA SEMANA:",WS-DIA-SEMANA


           EVALUATE WS-DIA-SEMANA
           WHEN 1
            DISPLAY "Segunda-feira"
           WHEN 2
            DISPLAY "Terca-feira"
           WHEN 3
            DISPLAY "Quarta-feira"
           WHEN 4
            DISPLAY "Quinta-feira"
           WHEN 5
            DISPLAY "Sexta-feira"
           WHEN 6
            DISPLAY "Sabado"
           WHEN 7
            DISPLAY "Domingo"
           WHEN OTHER
            DISPLAY "Numero invalido"
           END-EVALUATE.


            STOP RUN.
       END PROGRAM aula3.
