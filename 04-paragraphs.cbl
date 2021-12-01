       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut03.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 06st 2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       SubOne.
              DISPLAY "In Paragraph 1"
              PERFORM SubTwo
              DISPLAY "Returned to Paragraph 1"
              PERFORM SubFour 2 TIMES
              STOP RUN.
       SubThree.
              DISPLAY "In Paragraph 3".
       SubTwo.
              DISPLAY "In Paragraph 2"
              PERFORM SubThree
              DISPLAY "Returned to Paragraph 2".
       SubFour.
              DISPLAY "In Paragraph 4".
