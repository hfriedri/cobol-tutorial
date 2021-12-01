       IDENTIFICATION DIVISION.
       PROGRAM-ID. GETSUM.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 06st 2021.
       DATA DIVISION.
       LINKAGE SECTION.
       01  LNum1        PIC 9.
       01  LNum2        PIC 9.
       01  LSum1        PIC 99.
       PROCEDURE DIVISION USING LNum1, LNum2, LSum1.
           COMPUTE LSum1 = LNum1 + LNum2.
           DISPLAY "In Unterprogramm GETSUM".
       EXIT PROGRAM.
