       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut09.
       AUTHOR. Henning Friedrich.
       DATE-WRITTEN. October 07st 2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  SampStr              PIC X(18) VALUE 'eerie beef sneezed'.
       01  NumChars             PIC 99 VALUE 0.
       01  NumEs                PIC 99 VALUE 0.
       01  NumEsBeforeF         PIC 99 VALUE 0.
       01  FName                PIC X(6) VALUE 'Martin'.
       01  MName                PIC X(11) VALUE 'Luther King'.
       01  LName                PIC X(4) VALUE 'King'.
       01  FLName               PIC X(11).
       01  FMLName              PIC X(18).
       01  SStr1                PIC X(7) VALUE "The egg".
       01  SStr2                PIC X(9) VALUE "is #1 and".
       01  Dest                 PIC X(33) VALUE "is the big chicken".
       01  Ptr                  PIC 9 VALUE 1.
       01  SStr3                PIC X(3).
       01  SStr4                PIC X(3).
       PROCEDURE DIVISION.
           INSPECT SampStr TALLYING NumChars FOR CHARACTERS.
           DISPLAY "Number of Characters : " NumChars.
           INSPECT SampStr TALLYING NumEs    FOR ALL 'e'.
           DISPLAY "Number of Es         : " NumEs.
           INSPECT SampStr TALLYING NumEsBeforeF FOR ALL 'e' BEFORE 'f'.
           DISPLAY "Number of Es before f: " NumEsBeforeF.
           DISPLAY FUNCTION UPPER-CASE(SampStr)
           DISPLAY FUNCTION LOWER-CASE(SampStr)
           STRING FName DELIMITED BY SIZE
           SPACE
           LName DELIMITED BY SIZE
           INTO FLName.
           DISPLAY "FLName : " FLName.
           STRING FLName DELIMITED BY SPACES
           SPACE
           MName DELIMITED BY SIZE
           SPACE
           LName DELIMITED BY SIZE
           INTO FMLName
           ON OVERFLOW DISPLAY 'Overflowed'.
           DISPLAY "FMLName : " FMLName.
           STRING SStr1 DELIMITED BY SIZE
           SPACE
           SStr2 DELIMITED BY "#"
           INTO Dest
           WITH POINTER Ptr
           ON OVERFLOW DISPLAY 'Overflowed'.
           DISPLAY Dest.
           UNSTRING SStr1 DELIMITED BY SPACE
           INTO SStr3, SStr4
           END-UNSTRING.
           DISPLAY "SStr3 : " SStr3.
           DISPLAY "SStr4 : " SStr4.
           STOP RUN.
