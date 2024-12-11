01  WS-AREA. 
    05  WS-NUMBER PIC 9(5) VALUE 99999. 
    05  WS-RESULT PIC 9(5). 

      * The program attempts to perform an arithmetic operation that results in an overflow. 
      * COBOL's default handling of arithmetic overflow might not always be apparent to the developer. 
      * Depending on the compiler and runtime environment, an overflow condition might lead to unpredictable results, a program termination, or silently wrapping the number. 

      ADD 1 TO WS-NUMBER
      COMPUTE WS-RESULT = WS-NUMBER * 2
      DISPLAY "Result: " WS-RESULT

      STOP RUN.