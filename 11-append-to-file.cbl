       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut10.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 08st 2021
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
              SELECT CustomerFile ASSIGN TO "Customer.dat"
                  ORGANIZATION IS LINE SEQUENTIAL
                  ACCESS IS SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD CustomerFile.
       01  CustomerData.
               02  IDNum              PIC 9(8).
               02  CustName.
                    03  FirstName     PIC X(15).
                    03  LastName      PIC X(15).
       WORKING-STORAGE SECTION.
       01  WSCustomer.
               02  WSIDNum            PIC 9(8).
               02  WSCustName.
                    03  WSFirstName   PIC X(15).
                    03  WSLastName    PIC X(15).
       PROCEDURE DIVISION.
           OPEN EXTEND CustomerFile.
               DISPLAY "Customer ID " WITH NO ADVANCING
               ACCEPT IDNum
               DISPLAY "Customer FirstName " WITH NO ADVANCING
               ACCEPT FirstName
               DISPLAY "Customer LastName " WITH NO ADVANCING
               ACCEPT LastName
               WRITE CustomerData
               END-WRITE.
           CLOSE CustomerFile.
           STOP RUN.
