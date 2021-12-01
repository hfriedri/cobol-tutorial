       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut02.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 01st 2021
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SampleData           PIC X(10) VALUE "Stuff".
       01  JustLetters          PIC AAA VALUE "ABC".
       01  JustNums             PIC 9(4) VALUE 1234.
       01  SignedInt            PIC S9(4) VALUE -1234.
       01  PayCheck             PIC 9(4)V99 VALUE ZEROS.
       01  Customer.
               02 Ident         PIC 9(3).
               02 CustName      PIC X(20).
               02 DateOfBirth.
                   03 MOB       PIC 99.
                   03 DOB       PIC 99.
                   03 YOB       PIC 9(4).
       01 Num1                  PIC 9 VALUE 5.
       01 Num2                  PIC 9 VALUE 4.
       01 Num3                  PIC 9 VALUE 3.
       01 Ans                   PIC S99V99 VALUE 0.
       01 Rem                   PIC 9V99.
       PROCEDURE DIVISION.
           MOVE "More Stuff" TO SampleData
           DISPLAY "SampleData " SampleData
           MOVE "123" TO SampleData
           DISPLAY "SampleData " SampleData
           MOVE 123 TO SampleData
           DISPLAY "SampleData " SampleData
           DISPLAY "PayCheck " PayCheck
           MOVE "123Henning Friedrich   01301986" TO Customer
           DISPLAY "Customers Ident " Ident
           DISPLAY "Customers Name " CustName
           DISPLAY "Customers Birthday : " DOB "." MOB "." YOB
           MOVE ZERO TO SampleData
           DISPLAY "SampleData ZERO " SampleData
           MOVE SPACE TO SampleData
           DISPLAY "SampleData SPACE " SampleData
           MOVE HIGH-VALUE TO SampleData
           DISPLAY "SampleData HIGH-VALUE " SampleData
           MOVE LOW-VALUE TO SampleData
           DISPLAY "SampleData LOW-VALUE " SampleData
           MOVE QUOTE TO SampleData
           DISPLAY "SampleData QUOTE " SampleData
           MOVE ALL "2" TO SampleData
           DISPLAY "SampleData ALL '2' " SampleData
           ADD Num1 TO Num2 GIVING Ans
           DISPLAY Num1 " + " Num2 " = " Ans
           SUBTRACT Num1 FROM Num2 GIVING Ans
           DISPLAY Num2 " - " Num1 " = " Ans
           SUBTRACT Num2 FROM Num1 GIVING Ans
           DISPLAY Num1 " - " Num2 " = " Ans
           MULTIPLY Num1 BY Num2 GIVING Ans
           DISPLAY Num1 " * " Num2 " = " Ans
           DIVIDE Num1 INTO Num2 GIVING Ans
           DISPLAY Num2 " / " Num1 " = " Ans
           DIVIDE Num1 INTO Num2 GIVING Ans REMAINDER Rem
           DISPLAY Num2 " / " Num1 " = " Ans " Remainder " Rem
           DIVIDE Num1 BY Num2 GIVING Ans REMAINDER Rem
           DISPLAY Num1 " / " Num2 " = " Ans " Remainder " Rem
           ADD Num1, Num2 TO Num3 GIVING Ans
           DISPLAY Num1 " + " Num2 " + " Num3 " = " Ans
           ADD Num1, Num2, Num3 GIVING Ans
           DISPLAY Num1 " + " Num2 " + " Num3 " = " Ans
           COMPUTE Ans = Num1 + Num2
           DISPLAY "COMPUTE : " Num1 " + " Num2 " = " Ans
           COMPUTE Ans = Num1 - Num2
           DISPLAY "COMPUTE : " Num1 " - " Num2 " = " Ans
           COMPUTE Ans = Num1 * Num2
           DISPLAY "COMPUTE : " Num1 " * " Num2 " = " Ans
           COMPUTE Ans = Num1 / Num2
           DISPLAY "COMPUTE : " Num1 " / " Num2 " = " Ans
           COMPUTE Ans = Num1 ** 2
           DISPLAY "COMPUTE : " Num1 " **2 = " Ans
           COMPUTE Ans = (3 + 5) * 5
           DISPLAY "COMPUTE: (3 + 5) * 5 = " Ans
           COMPUTE Ans = 3 + 5 * 5
           DISPLAY "COMPUTE: 3 + 5 * 5 = " Ans
           COMPUTE Ans ROUNDED = 3.0 + 2.005
           DISPLAY "COMPUTE: ROUNDED - 3.0 + 2.005 = " ANS
           STOP RUN.
