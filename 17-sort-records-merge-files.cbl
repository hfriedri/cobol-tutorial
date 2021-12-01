       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut17.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 11st 2021
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
              SELECT WorkFile1 ASSIGN TO "work1.tmp".
              SELECT WorkFile2 ASSIGN TO "work2.tmp".
              SELECT File1 ASSIGN TO "student1.dat"
                  ORGANIZATION IS LINE SEQUENTIAL.
              SELECT File2 ASSIGN TO "student2.dat"
                  ORGANIZATION IS LINE SEQUENTIAL.
              SELECT SortedFile ASSIGN TO "student-sorted.dat"
                  ORGANIZATION IS LINE SEQUENTIAL.
              SELECT NewFile ASSIGN TO "student-merged.dat"
                  ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  File1.
       01  StudData.
               02  IDNum      PIC 9.
               02  StudName   PIC X(10).
       FD  File2.
       01  StudData2.
               02  IDNum2     PIC 9.
               02  StudName2  PIC X(10).
       SD  WorkFile1.
       01  WStudData1.
               02  WIDNum1     PIC 9.
               02  WStudName1  PIC X(10).
       SD  WorkFile2.
       01  WStudData2.
               02  WIDNum2     PIC 9.
               02  WStudName2  PIC X(10).
       FD  SortedFile.
       01  SStudData.
               02  SIDNum     PIC 9.
               02  SStudName  PIC X(10).
       FD  NewFile.
       01  NStudData.
               02  NIDNum     PIC 9.
               02  NStudName  PIC X(10).
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           SORT WorkFile1 ON ASCENDING KEY SIDNum
                  USING File1
                  GIVING SortedFile.
           MERGE WorkFile2 ON ASCENDING KEY NIDNum
                  USING File1, File2
                  GIVING NewFile.
           STOP RUN.
