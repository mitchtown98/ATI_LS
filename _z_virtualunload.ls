/PROG  _Z_VIRTUALUNLOAD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 874;
CREATE		= DATE 21-08-19  TIME 21:16:30;
MODIFIED	= DATE 21-08-19  TIME 21:16:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 1186;
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
   1:  UTOOL_NUM=3 ;
   2:  OVERRIDE=30% ;
   3:L P[1] 150mm/sec FINE Wjnt    ;
   4:L P[2] 150mm/sec FINE Wjnt    ;
   5:   ;
   6:L P[3] 100mm/sec FINE Offset,PR[90:zup]    ;
   7:   ;
   8:L P[3] 50mm/sec FINE    ;
   9:  CALL LOADTOOL1    ;
  10:   ;
  11:L P[3] 100mm/sec FINE Offset,PR[90:zup]    ;
  12:   ;
  13:L P[4] 200mm/sec FINE    ;
  14:   ;
  15:L P[5] 250mm/sec FINE    ;
  16:   ;
  17:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =    71.038  mm,	Y =  -501.000  mm,	Z =   217.734  mm,
	W =     -.437 deg,	P =     -.189 deg,	R =     -.846 deg
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -137.012  mm,	Y =  -997.954  mm,	Z =    99.281  mm,
	W =      .455 deg,	P =      .142 deg,	R =   179.763 deg
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -137.012  mm,	Y =  -997.954  mm,	Z =   -21.679  mm,
	W =      .455 deg,	P =      .142 deg,	R =   179.763 deg
};
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -137.012  mm,	Y =  -803.555  mm,	Z =    28.321  mm,
	W =      .455 deg,	P =      .142 deg,	R =   179.763 deg
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -137.013  mm,	Y =  -503.558  mm,	Z =   -90.279  mm,
	W =    -7.351 deg,	P =    19.301 deg,	R =    80.734 deg
};
/END
