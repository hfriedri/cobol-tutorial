       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut03.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 06st 2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Num1                 PIC 9 VALUE 5.
       01  Num2                 PIC 9 VALUE 4.
       01  Sum1                 PIC 99.
       PROCEDURE DIVISION.
           CALL 'GETSUM' USING Num1, Num2, Sum1.
           DISPLAY Num1 " + " Num2 " = " Sum1.
           STOP RUN.
