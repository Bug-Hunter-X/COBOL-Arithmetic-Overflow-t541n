01  WS-AREA. 
    05  WS-NUMBER PIC 9(5) VALUE 99999. 
    05  WS-RESULT PIC 9(7). 
    05 WS-OVERFLOW-FLAG PIC 9 VALUE 0. 

      * Improved code to handle potential overflow. 
      * Increased size of WS-RESULT to accommodate the possible outcome of the computation. 
      * Introduced an overflow flag to provide explicit error handling.

      ADD 1 TO WS-NUMBER
      IF WS-NUMBER > 99999 THEN
          MOVE 1 TO WS-OVERFLOW-FLAG
          DISPLAY "Overflow occurred"
      ELSE
          COMPUTE WS-RESULT = WS-NUMBER * 2
          DISPLAY "Result: " WS-RESULT
      END-IF

      STOP RUN.