/PROG  _GRIND_LEFT_SIDE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 471;
CREATE		= DATE 21-08-19  TIME 21:16:04;
MODIFIED	= DATE 21-08-19  TIME 21:16:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 923;
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
   1:  IF R[20:GRIND LEFT SIDE]>=5,JMP LBL[99] ;
   2:  JMP LBL[R[20]] ;
   3:   ;
   4:  LBL[1] ;
   5:  CALL _GRIND_LS_G1    ;
   6:  JMP LBL[99] ;
   7:   ;
   8:  LBL[2] ;
   9:  CALL _GRIND_LS_G2    ;
  10:  JMP LBL[99] ;
  11:   ;
  12:  LBL[3] ;
  13:  CALL _GRIND_LS_G3    ;
  14:  JMP LBL[99] ;
  15:   ;
  16:  LBL[4] ;
  17:  CALL _GRIND_LS_G4    ;
  18:  R[20:GRIND LEFT SIDE]=1    ;
  19:   ;
  20:  LBL[99] ;
  21:  AO[1:COMPENSATION]=0 ;
/POS
/END
