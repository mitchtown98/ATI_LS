/PROG  _TOOL_1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 359;
CREATE		= DATE 21-08-19  TIME 21:16:26;
MODIFIED	= DATE 21-08-19  TIME 21:16:26;
FILE_NAME	= _TOOL_2;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 863;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  IF R[3:TOOL #]<>1,JMP LBL[99] ;
   2:  CALL _PLACE_T1    ;
   3:  CALL _PICK_T2_DC    ;
   4:  IF R[16:DUST COVER ON T2]=1,JMP LBL[1] ;
   5:  CALL _PLACE_T1_DC    ;
   6:  LBL[1] ;
   7:  CALL _PICK_T2    ;
   8:  LBL[99] ;
/POS
/END
