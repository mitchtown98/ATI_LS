/PROG  _PLACE_T2_DC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1012;
CREATE		= DATE 21-08-19  TIME 21:16:16;
MODIFIED	= DATE 21-08-21  TIME 05:24:20;
FILE_NAME	= _PLACE_T;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1416;
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
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[2:SANDER] ;
   4:   ;
   5:  IF DI[16:T2_UNLOCKED_FIXT]=OFF AND DI[12:T2_COVER_CLAMPED]=ON,JMP LBL[99] ;
   6:   ;
   7:  CALL _T2_UNCLAMP    ;
   8:  WAIT DI[16:T2_UNLOCKED_FIXT]=ON    ;
   9:  ! Set Offset ;
  10:  PR[4:TOOL_OFFSET]=PR[4:TOOL_OFFSET]-PR[4:TOOL_OFFSET]    ;
  11:   ;
  12:  !SAFE APPROACH ;
  13:  PR[4,3:TOOL_OFFSET]=(65) ;
  14:L P[1:atCover] 500mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  15:   ;
  16:  !PLACE T2 DUST COVER ;
  17:L P[1:atCover] 100mm/sec FINE    ;
  18:  CALL _ATI_UNLOCK    ;
  19:  WAIT    .50(sec) ;
  20:  PAYLOAD[3:MASTER] ;
  21:  CALL _T2_CLAMP    ;
  22:   ;
  23:  !SAFE RETREAT ;
  24:L P[1:atCover] 100mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  25:  LBL[99] ;
  26:  END ;
  27:  !**Touch up ** ;
  28:L P[1:atCover] 100mm/sec FINE    ;
  29:   ;
  30:   ;
  31:   ;
/POS
P[1:"atCover"]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =  -142.703  mm,	Y = -1020.609  mm,	Z =  -175.228  mm,
	W =      .294 deg,	P =      .439 deg,	R =   -10.865 deg
};
/END
