/PROG  _GRIND_TS_G4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 781;
CREATE		= DATE 21-08-19  TIME 21:16:08;
MODIFIED	= DATE 21-08-19  TIME 21:16:08;
FILE_NAME	= _GRIND_T;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1305;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=1 ;
   3:   ;
   4:  PR[3:WELD OFFSET]=PR[3:WELD OFFSET]-PR[3:WELD OFFSET]    ;
   5:  PR[3,3:WELD OFFSET]=(R[14:RETREAT UP]) ;
   6:  PR[22,1:GRIND TOP SIDE]=(R[74:GRIND TOP G4]) ;
   7:J PR[22:GRIND TOP SIDE] 50% CNT10 Offset,PR[3:WELD OFFSET]    ;
   8:   ;
   9:  !GRIND WELD #4 ;
  10:  !ABOVE WELD ;
  11:   ;
  12:  !GRIND WELD ;
  13:  CALL _GRINDER_ON    ;
  14:  WAIT R[10] ;
  15:   ;
  16:L PR[22:GRIND TOP SIDE] 100mm/sec CNT R[13:SAND CNT]    ;
  17:   ;
  18:  !FORWARD GRIND ;
  19:  CALL _TOP_G_FORWARD    ;
  20:   ;
  21:  !REVERSE GRIND ;
  22:  CALL _TOP_G_REVERSE    ;
  23:   ;
  24:  !FORWARD GRIND ;
  25:  CALL _TOP_G_FORWARD    ;
  26:   ;
  27:  !RETREAT GRIND ;
  28:  CALL _TOP_G_RETREAT    ;
  29:   ;
  30:  !NEXT WELD ;
  31:  R[22:GRIND TOP SIDE]=R[22:GRIND TOP SIDE]+1    ;
  32:   ;
  33:  LBL[99] ;
  34:  AO[1:COMPENSATION]=0 ;
  35:  DO[14:(NOT USED)GRINDER ON]=OFF ;
/POS
/END
