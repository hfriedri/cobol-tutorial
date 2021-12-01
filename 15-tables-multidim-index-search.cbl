       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut15.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 11st 2021
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Table1.
               02  Friend              PIC X(15) OCCURS 4 TIMES.
       01  CustTable.
               02  CustName            OCCURS 5 TIMES.
                    03  FName          PIC X(15).
                    03  LName          PIC X(15).
       01  OrderTable.
               02  Product             OCCURS 2 TIMES INDEXED BY I.
                    03  ProdName       PIC X(10).
                    03  ProdSize       OCCURS 3 TIMES INDEXED BY J.
                         04  SizeType  PIC A.
       PROCEDURE DIVISION.
           MOVE "Joy" TO Friend(1).
           MOVE "Willow" TO Friend(2).
           MOVE "Ivy" TO Friend(3).
           MOVE "Tom" TO Friend(4).
           DISPLAY "Friend(1) : "Friend(1).
           Display "Table1 : "Table1.
           MOVE "Paul" TO FName(1).
           MOVE "Smith" TO LName(1).
           MOVE "Sally" TO FName(2).
           MOVE "Smith" TO LName(2).
           DISPLAY "CustName1 : " CustName(1).
           DISPLAY "CustTable : " CustTable.
           SET I J TO 1.
           MOVE "Blue Shirt" TO Product(I).
           MOVE "S" TO ProdSize(I,J).
           SET J UP BY 1.
           MOVE "M" TO ProdSize(I,J).
           PERFORM GetProduct VARYING I FROM 1 BY 1 UNTIL I>2.
           PERFORM LookUp.
           SET J DOWN BY 1.
           MOVE "Blue ShirtSMLRed Shirt SML" TO OrderTable.
           PERFORM GetProduct VARYING I FROM 1 BY 1 UNTIL I>2.
           PERFORM LookUp.
           STOP RUN.
       GetProduct.
           DISPLAY Product(I).
           PERFORM GetSizes VARYING J FROM I BY 1 UNTIL J>3.
       GetSizes.
           DISPLAY ProdSize(I,J).
       LookUp.
           SET I TO 1.
           SEARCH Product
               AT END DISPLAY "Blue Shirt Not Found"
               WHEN ProdName(I) = "Blue Shirt"
                   DISPLAY "Blue Shirt Found in : " I
           END-SEARCH.
           SEARCH Product
               AT END DISPLAY "Red Shirt Not Found"
               WHEN ProdName(I) = "Red Shirt"
                   DISPLAY "Red Shirt Found in : " I
           END-SEARCH.
