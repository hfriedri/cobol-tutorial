       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut07.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 07st 2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  StartNum             PIC 9(8)V99 VALUE 00001123.55.
       01  NoZero               PIC ZZZZZZZ9.99.
       01  NoZPlusC             PIC ZZ,ZZZ,ZZ9.99.
       01  Dollar               PIC $$,$$$,$$9.99.
       01  BDay                 PIC 9(8) VALUE 30011986.
       01  ADate                PIC 99/99/9999.
       PROCEDURE DIVISION.
           DISPLAY "StartNum     : " StartNum
           DISPLAY "BDay         : " BDay
           MOVE StartNum TO NoZero
           DISPLAY "NoZero       : " NoZero
           MOVE StartNum TO NoZPlusC
           DISPLAY "NoZPlusC     : " NoZPlusC
           MOVE StartNum TO Dollar
           DISPLAY "Dollar       : " NoZPlusC
           MOVE BDay TO ADate
           DISPLAY "ADate        : " ADate
           STOP RUN.
