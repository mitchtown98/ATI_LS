/PROG  GRIND_TOP_SIDE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DEMO";
PROG_SIZE	= 1116;
CREATE		= DATE 21-08-19  TIME 21:16:00;
MODIFIED	= DATE 21-08-19  TIME 21:16:00;
FILE_NAME	= _GRIND_T;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1476;
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
   4:  PR[14:DEMO GRIND]=PR[14:DEMO GRIND]-PR[14:DEMO GRIND]    ;
   5:  PR[14,3:DEMO GRIND]=(R[14:RETREAT UP]) ;
   6:   ;
   7:  !GRIND WELD #1 ;
   8:  !ABOVE WELD ;
   9:J P[1] 50% CNT50 Offset,PR[14:DEMO GRIND]    ;
  10:   ;
  11:  !DOWNWARD GRIND ;
  12:  !TEACH POSITION ;
  13:L P[1] 100mm/sec FINE    ;
  14:   ;
  15:  !FORWARD GRIND ;
  16:  PR[14:DEMO GRIND]=PR[14:DEMO GRIND]-PR[14:DEMO GRIND]    ;
  17:  PR[14,1:DEMO GRIND]=(R[120:DEMO G FWD]) ;
  18:L P[1] 100mm/sec CNT10 Offset,PR[14:DEMO GRIND]    ;
  19:   ;
  20:  !REVERSE GRIND ;
  21:L P[1] 100mm/sec CNT10    ;
  22:   ;
  23:  !FORWARD GRIND ;
  24:  PR[14,1:DEMO GRIND]=(R[120:DEMO G FWD]) ;
  25:L P[1] 100mm/sec CNT10 Offset,PR[14:DEMO GRIND]    ;
  26:   ;
  27:  !REVERSE GRIND ;
  28:L P[1] 100mm/sec CNT10    ;
  29:   ;
  30:  PR[14:DEMO GRIND]=PR[14:DEMO GRIND]-PR[14:DEMO GRIND]    ;
  31:  PR[14,3:DEMO GRIND]=(R[14:RETREAT UP]) ;
  32:   ;
  33:  !GRIND WELD #1 ;
  34:  !ABOVE WELD ;
  35:L P[1] 100mm/sec CNT10 Offset,PR[14:DEMO GRIND]    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    74.964  mm,	Y =    55.843  mm,	Z =   -99.228  mm,
	W =  -172.452 deg,	P =   -26.892 deg,	R =   -98.751 deg
};
/END
