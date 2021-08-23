/PROG  _DEMO
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1811;
CREATE		= DATE 21-08-19  TIME 21:16:02;
MODIFIED	= DATE 21-08-19  TIME 21:16:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2427;
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
   1:  //CALL _MOVE_HOME    ;
   2:  //CALL _T1_CLAMP    ;
   3:  //CALL _T2_CLAMP    ;
   4:  UFRAME_NUM=1 ;
   5:  UTOOL_NUM=1 ;
   6:  OVERRIDE=R[1:Override Speed] ;
   7:J P[1] 30% CNT20 ACC50    ;
   8:L P[2] 1000mm/sec CNT50    ;
   9:L P[3] 20mm/sec FINE    ;
  10:L P[4] 20mm/sec FINE    ;
  11:L P[3] 20mm/sec FINE    ;
  12:L P[4] 20mm/sec FINE    ;
  13:L P[3] 20mm/sec FINE    ;
  14:L P[4] 20mm/sec FINE    ;
  15:  WAIT    .50(sec) ;
  16:  AO[1:COMPENSATION]=350 ;
  17:L P[1] 1200mm/sec CNT20 ACC50    ;
  18:  AO[1:COMPENSATION]=0 ;
  19:   ;
  20:  !NO TOOL IN MASTER ;
  21:  !DUST COVER IN MASTER ;
  22:  IF R[3:TOOL #]=0 AND R[15:DUST COVER ON T1]=0,CALL _PLACE_T1_DC ;
  23:  IF R[3:TOOL #]=0 AND R[16:DUST COVER ON T2]=0,CALL _PLACE_T2_DC ;
  24:   ;
  25:  !NO TOOL IN MASTER ;
  26:  IF R[3:TOOL #]=0,CALL _NO_TOOL ;
  27:   ;
  28:  !GRINDER TOOL 1 ;
  29:  IF R[3:TOOL #]=1,JMP LBL[10] ;
  30:   ;
  31:  !SANDER TOOL 2 ;
  32:  IF R[3:TOOL #]=2,CALL _TOOL_2 ;
  33:   ;
  34:  LBL[10] ;
  35:  IF R[90:DEMO]>=4,JMP LBL[99] ;
  36:  JMP LBL[R[90]] ;
  37:   ;
  38:  LBL[1] ;
  39:  OVERRIDE=R[1:Override Speed] ;
  40:  PAYLOAD[1:GRINDER] ;
  41:  CALL GRIND_LEFT_SIDE    ;
  42:  CALL _TOOL_1    ;
  43:  CALL SAND_LEFT_SIDE    ;
  44:  CALL _TOOL_2    ;
  45:  R[90:DEMO]=R[90:DEMO]+1    ;
  46:  IF (F[4:RUN_DEMO]=OFF),JMP LBL[99] ;
  47:   ;
  48:  LBL[2] ;
  49:  OVERRIDE=R[1:Override Speed] ;
  50:  CALL GRIND_RIGHT_SIDE    ;
  51:  CALL _TOOL_1    ;
  52:  CALL SAND_RIGHT_SIDE    ;
  53:  CALL _TOOL_2    ;
  54:  R[90:DEMO]=R[90:DEMO]+1    ;
  55:  IF (F[4:RUN_DEMO]=OFF),JMP LBL[99] ;
  56:   ;
  57:  LBL[3] ;
  58:  OVERRIDE=R[1:Override Speed] ;
  59:  CALL GRIND_TOP_SIDE    ;
  60:  CALL _TOOL_1    ;
  61:  CALL SAND_TOP_SIDE    ;
  62:  CALL _TOOL_2    ;
  63:  R[90:DEMO]=1    ;
  64:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    60.149  mm,	Y =  -706.759  mm,	Z =   -93.876  mm,
	W =     -.021 deg,	P =    29.997 deg,	R =    88.109 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   303.543  mm,	Y =    22.061  mm,	Z =  -105.428  mm,
	W =  -179.828 deg,	P =   -29.361 deg,	R =   161.922 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   303.539  mm,	Y =    22.043  mm,	Z =   -88.148  mm,
	W =  -179.828 deg,	P =   -29.361 deg,	R =   161.922 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   303.540  mm,	Y =    22.048  mm,	Z =   -92.948  mm,
	W =  -179.828 deg,	P =   -29.361 deg,	R =   161.922 deg
};
/END
