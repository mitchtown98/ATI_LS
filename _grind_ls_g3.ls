/PROG  _GRIND_LS_G3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1109;
CREATE		= DATE 21-08-19  TIME 21:16:06;
MODIFIED	= DATE 21-08-19  TIME 21:16:06;
FILE_NAME	= _GRIND_L;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 1581;
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
   6:  PR[20,1:GRIND LEFT SIDE]=(R[33:GRIND LS G3]) ;
   7:J PR[20:GRIND LEFT SIDE] 30% CNT10 Offset,PR[3:WELD OFFSET]    ;
   8:  !GRIND WELD ;
   9:  CALL _GRINDER_ON    ;
  10:  WAIT R[10] ;
  11:   ;
  12:  !GRIND WELD #3 ;
  13:  !ABOVE WELD ;
  14:  PR[3:WELD OFFSET]=PR[3:WELD OFFSET]-PR[3:WELD OFFSET]    ;
  15:  PR[3,3:WELD OFFSET]=(R[35:GRIND LS DOWN]) ;
  16:L PR[20:GRIND LEFT SIDE] 100mm/sec FINE Tool_Offset,PR[3:WELD OFFSET]    ;
  17:   ;
  18:  !FORWARD GRIND ;
  19:  AO[1:COMPENSATION]=0 ;
  20:  AO[1:COMPENSATION]=R[17:AO1] ;
  21:  CALL _LS_G_FORWARD    ;
  22:   ;
  23:  !REVERSE GRIND ;
  24:  AO[1:COMPENSATION]=0 ;
  25:  AO[1:COMPENSATION]=R[18:AO2] ;
  26:  CALL _LS_G_REVERSE    ;
  27:   ;
  28:  !FORWARD GRIND ;
  29:  AO[1:COMPENSATION]=0 ;
  30:  AO[1:COMPENSATION]=R[18:AO2] ;
  31:  CALL _LS_G_FORWARD2    ;
  32:   ;
  33:  !REVERSE GRIND ;
  34:  AO[1:COMPENSATION]=0 ;
  35:  AO[1:COMPENSATION]=R[19:AO3] ;
  36:  CALL _LS_G_REVERSE    ;
  37:   ;
  38:  !FORWARD GRIND ;
  39:  AO[1:COMPENSATION]=0 ;
  40:  AO[1:COMPENSATION]=R[19:AO3] ;
  41:  CALL _LS_G_FORWARD2    ;
  42:   ;
  43:  !RETREAT GRIND ;
  44:  CALL _GRINDER_OFF    ;
  45:  CALL _RETREAT_GRIND    ;
  46:   ;
  47:  !NEXT WELD ;
  48:  R[20:GRIND LEFT SIDE]=R[20:GRIND LEFT SIDE]+1    ;
  49:   ;
  50:  LBL[99] ;
  51:  AO[1:COMPENSATION]=0 ;
  52:  DO[14:(NOT USED)GRINDER ON]=OFF ;
/POS
/END