/PROG  _Z_TESTPOS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1181;
CREATE		= DATE 21-08-19  TIME 21:16:30;
MODIFIED	= DATE 21-08-19  TIME 21:16:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1637;
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
   2:   ;
   3:  //L P[1:MidPt] 100mm/sec CNT100    ;
   4:   ;
   5:  CALL _SET_LPOS_REG    ;
   6:  IF R[189:LPOS Y]>R[153:SafeY],JMP LBL[40] ;
   7:   ;
   8:  IF (R[189:LPOS Y]>R[153:SafeY]) THEN ;
   9:  JMP LBL[40] ;
  10:  ELSE ;
  11:  IF (R[190:LPOS Z]>R[154:SafeZ]) THEN ;
  12:  JMP LBL[99] ;
  13:  ELSE ;
  14:   ;
  15:  R[150:RETRY]=R[190:LPOS Z]-R[154:SafeZ]    ;
  16:   ;
  17:  PR[9:BurnerOffset]=PR[9:BurnerOffset]-PR[9:BurnerOffset]    ;
  18:   ;
  19:  PR[9,3:BurnerOffset]=R[150:RETRY]    ;
  20:L P[9] 100mm/sec FINE    ;
  21:   ;
  22:  JMP LBL[100] ;
  23:  ENDIF ;
  24:  ENDIF ;
  25:   ;
  26:  LBL[40:ClrToolHolder] ;
  27:   ;
  28:  IF (R[190:LPOS Z]<R[154:SafeZ]) THEN ;
  29:  R[151]=R[189:LPOS Y]    ;
  30:  R[150:RETRY]=R[189:LPOS Y]-R[153:SafeY]    ;
  31:  R[150:RETRY]=R[150:RETRY]*(-1)    ;
  32:  PR[9,2:BurnerOffset]=R[150:RETRY]    ;
  33:   ;
  34:L PR[5:LPOS] 200mm/sec FINE Offset,PR[9:BurnerOffset]    ;
  35:   ;
  36:  ELSE ;
  37:L P[1:MidPt] 300mm/sec CNT100    ;
  38:   ;
  39:   ;
  40:   ;
  41:  ENDIF ;
  42:  LBL[99] ;
  43:L P[1:MidPt] 300mm/sec CNT100    ;
  44:   ;
  45:  LBL[100:END] ;
  46:   ;
/POS
P[1:"MidPt"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   129.974  mm,	Y =  -669.652  mm,	Z =  -206.838  mm,
	W =     -.436 deg,	P =     -.187 deg,	R =     -.846 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -52.428  mm,	Y =  -897.000  mm,	Z =  -219.590  mm,
	W =     -.437 deg,	P =     -.184 deg,	R =    -2.580 deg
};
/END
