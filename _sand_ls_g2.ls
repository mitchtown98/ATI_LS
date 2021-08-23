/PROG  _SAND_LS_G2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 975;
CREATE		= DATE 21-08-19  TIME 21:16:20;
MODIFIED	= DATE 21-08-19  TIME 21:16:20;
FILE_NAME	= _SAND_LS;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1463;
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
   4:  PR[30,1:SAND LEFT SIDE]=(R[42:SAND LS G2]) ;
   5:J PR[30:SAND LEFT SIDE] 50% CNT10    ;
   6:  !SAND WELD #2 ;
   7:  !ABOVE WELD ;
   8:   ;
   9:  !SAND WELD ;
  10:  CALL _SANDER_ON    ;
  11:  WAIT R[11] ;
  12:   ;
  13:  !CALCULATE DOWN OFFSET ;
  14:  !FOR LEFT SIDE WELDS ;
  15:  PR[11:SAND OFFSET]=LPOS    ;
  16:  R[46:S LS HOLDER]=PR[11,3:SAND OFFSET]    ;
  17:  R[46:S LS HOLDER]=R[46:S LS HOLDER]+R[45:SAND LS DOWN]    ;
  18:   ;
  19:  OVERRIDE=R[2:S SPEED OVERIDE] ;
  20:  !DOWNWARD GRIND ;
  21:  PR[11,3:SAND OFFSET]=R[46:S LS HOLDER]    ;
  22:L PR[11:SAND OFFSET] 100mm/sec CNT R[13:SAND CNT]    ;
  23:   ;
  24:  !SAND LEFT ;
  25:  AO[1:COMPENSATION]=0 ;
  26:  AO[1:COMPENSATION]=R[17:AO1] ;
  27:  CALL _LS_S_SLEFT    ;
  28:   ;
  29:  !SAND RIGHT ;
  30:  AO[1:COMPENSATION]=0 ;
  31:  AO[1:COMPENSATION]=R[18:AO2] ;
  32:  CALL _LS_S_SRIGHT    ;
  33:   ;
  34:  !SAND 2nd LEFT ;
  35:  AO[1:COMPENSATION]=0 ;
  36:  AO[1:COMPENSATION]=R[18:AO2] ;
  37:  CALL _LS_S_2ND_SLEFT    ;
  38:   ;
  39:  !RETREAT SAND ;
  40:  CALL _LS_S_RETREAT    ;
  41:   ;
  42:  !NEXT WELD ;
  43:  R[24:SAND LEFT SIDE]=R[24:SAND LEFT SIDE]+1    ;
  44:   ;
  45:  LBL[99] ;
  46:  AO[1:COMPENSATION]=0 ;
/POS
/END
