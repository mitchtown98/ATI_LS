/PROG  CYCLE_COUNTER	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Used to count cs";
PROG_SIZE	= 267;
CREATE		= DATE 21-08-19  TIME 21:15:58;
MODIFIED	= DATE 21-08-19  TIME 23:29:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 5;
MEMORY_SIZE	= 619;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !**Counter for passes** ;
   2:  IF (R[180:COUNTER]=1) THEN ;
   3:  R[181:COUNT HOLDER]=R[181:COUNT HOLDER]+1    ;
   4:  R[180:COUNTER]=0    ;
   5:  ENDIF ;
/POS
/END
