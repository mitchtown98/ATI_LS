/PROG  U_TEST_COVER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1133;
CREATE		= DATE 21-08-24  TIME 03:31:48;
MODIFIED	= DATE 21-08-24  TIME 05:28:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 67;
MEMORY_SIZE	= 1681;
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
   1:  LBL[98] ;
   2:  SELECT R[3:TOOL #]=0,JMP LBL[10] ;
   3:         =1,JMP LBL[20] ;
   4:         =2,JMP LBL[30] ;
   5:         ELSE,JMP LBL[99] ;
   6:   ;
   7:   ;
   8:  LBL[10:Empty] ;
   9:  IF (R[15:DUST COVER ON T1]=0 AND R[16:DUST COVER ON T2]=1) THEN ;
  10:  CALL _PICK_T1    ;
  11:   ;
  12:  CALL _MOVE_HOME    ;
  13:   ;
  14:  CALL _PLACE_T1    ;
  15:   ;
  16:  CALL _COVER_SWAP    ;
  17:   ;
  18:  CALL _PICK_T2    ;
  19:   ;
  20:  CALL _MOVE_HOME    ;
  21:   ;
  22:  CALL _PLACE_T2    ;
  23:   ;
  24:  CALL _MOVE_HOME    ;
  25:  JMP LBL[99] ;
  26:  ELSE ;
  27:  ENDIF ;
  28:   ;
  29:   ;
  30:  IF (R[15:DUST COVER ON T1]=1 AND R[16:DUST COVER ON T2]=0) THEN ;
  31:  CALL _PICK_T2    ;
  32:   ;
  33:  CALL _MOVE_HOME    ;
  34:   ;
  35:  CALL _PLACE_T2    ;
  36:   ;
  37:  CALL _COVER_SWAP    ;
  38:   ;
  39:  CALL _PICK_T1    ;
  40:   ;
  41:  CALL _MOVE_HOME    ;
  42:   ;
  43:  CALL _PLACE_T1    ;
  44:   ;
  45:  CALL _MOVE_HOME    ;
  46:   ;
  47:  JMP LBL[99] ;
  48:  ELSE ;
  49:  ENDIF ;
  50:   ;
  51:  IF (R[15:DUST COVER ON T1]=0 AND R[16:DUST COVER ON T2]=0) THEN ;
  52:   ;
  53:  CALL _CHK_COVER_PRES    ;
  54:  ELSE ;
  55:  ENDIF ;
  56:   ;
  57:   ;
  58:   ;
  59:  LBL[20:T1 PRES] ;
  60:   ;
  61:   ;
  62:  LBL[30:T2 Pres] ;
  63:   ;
  64:   ;
  65:   ;
  66:   ;
  67:  LBL[99] ;
/POS
/END
