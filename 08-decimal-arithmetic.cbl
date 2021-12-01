       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut08.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 07st 2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Price                PIC 9(4)V99.
       01  TaxRate              PIC V999 VALUE .075.
       01  FullPrice            PIC 9(4)V99.
       PROCEDURE DIVISION.
           DISPLAY "Enter the Price : " WITH NO ADVANCING
           ACCEPT Price
           DISPLAY "Price : " Price.
           COMPUTE FullPrice ROUNDED = Price + (TaxRate * Price).
           DISPLAY "Price + Tax : " FullPrice.
           COMPUTE FullPrice ROUNDED = 4567.98 + 342.59.
           DISPLAY "Price + Tax : " FullPrice.
           STOP RUN.
