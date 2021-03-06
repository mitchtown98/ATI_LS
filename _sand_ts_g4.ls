/PROG  _SAND_TS_G4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 913;
CREATE		= DATE 21-08-19  TIME 21:16:24;
MODIFIED	= DATE 21-08-19  TIME 21:16:24;
FILE_NAME	= _SAND_TS;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 1385;
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
   1:  UTOOL_NUM=2 ;
   2:  UFRAME_NUM=1 ;
   3:   ;
   4:  PR[32,1:SAND TOP SIDE]=(R[84:SAND TOP G4]) ;
   5:J PR[32:SAND TOP SIDE] 50% CNT10    ;
   6:  !SAND WELD #2 ;
   7:  !ABOVE WELD ;
   8:   ;
   9:  !SAND WELD ;
  10:  CALL _SANDER_ON    ;
  11:  WAIT R[11] ;
  12:   ;
  13:  !DOWNWARD GRIND ;
  14:  PR[11:SAND OFFSET]=LPOS    ;
  15:  R[86:S TOP HOLDER]=PR[11,3:SAND OFFSET]    ;
  16:  R[86:S TOP HOLDER]=R[86:S TOP HOLDER]+R[85:S TOP DOWN]    ;
  17:  PR[11,3:SAND OFFSET]=R[86:S TOP HOLDER]    ;
  18:L PR[11:SAND OFFSET] 100mm/sec CNT R[13:SAND CNT]    ;
  19:   ;
  20:  !SAND LEFT ;
  21:  PR[12:SAND OFFSET RS]=LPOS    ;
  22:L PR[12:SAND OFFSET RS] 20mm/sec CNT R[13:SAND CNT]    ;
  23:  CALL _TS_S_LS    ;
  24:   ;
  25:  !SAND LEFT ;
  26:L PR[12:SAND OFFSET RS] 20mm/sec CNT R[13:SAND CNT]    ;
  27:  CALL _TS_S_LS    ;
  28:   ;
  29:  !SAND LEFT ;
  30:L PR[12:SAND OFFSET RS] 20mm/sec CNT R[13:SAND CNT]    ;
  31:  CALL _TS_S_LS    ;
  32:   ;
  33:  !RETREAT GRIND ;
  34:  PR[11:SAND OFFSET]=LPOS    ;
  35:  R[86:S TOP HOLDER]=PR[11,3:SAND OFFSET]    ;
  36:  R[86:S TOP HOLDER]=R[86:S TOP HOLDER]+R[14:RETREAT UP]    ;
  37:  PR[11,3:SAND OFFSET]=R[86:S TOP HOLDER]    ;
  38:L PR[11:SAND OFFSET] 100mm/sec CNT100    ;
  39:   ;
  40:  !NEXT WELD ;
  41:  R[26:SAND TOP SIDE]=R[26:SAND TOP SIDE]+1    ;
  42:   ;
  43:  LBL[99] ;
  44:  AO[1:COMPENSATION]=0 ;
/POS
/END
