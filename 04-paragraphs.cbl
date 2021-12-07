       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut03.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 06st 2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  TestNumber           PIC X.
               88 ANumber       VALUE "0" THRU "9".
       PROCEDURE DIVISION.
       SubOne.
              DISPLAY "In Paragraph 1"
              PERFORM SubTwo
              DISPLAY "Returned to Paragraph 1"
              PERFORM SubFour 2 TIMES
              ACCEPT TestNumber
              PERFORM SubFive UNTIL NOT ANumber
              STOP RUN.
       SubThree.
              DISPLAY "In Paragraph 3".
       SubTwo.
              DISPLAY "In Paragraph 2"
              PERFORM SubThree
              DISPLAY "Returned to Paragraph 2".
       SubFour.
              DISPLAY "In Paragraph 4".
       SubFive.
              DISPLAY "In Paragraph 5".
              ACCEPT TestNumber.
