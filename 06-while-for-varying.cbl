       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut06.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 06st 2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Ind                  PIC 9(1) VALUE 0.
       PROCEDURE DIVISION.
           PERFORM OutputData WITH TEST AFTER UNTIL Ind > 5
           PERFORM ForLoop.
       OutputData.
              ADD 1 TO Ind.
              DISPLAY "OutputData : " Ind.
       ForLoop.
              PERFORM OutputData2 VARYING Ind FROM 1 BY 1 UNTIL Ind=5
              STOP RUN.
       OutputData2.
              DISPLAY "OutputData2 : " Ind.
