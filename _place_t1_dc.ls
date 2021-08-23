/PROG  _PLACE_T1_DC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 994;
CREATE		= DATE 21-08-19  TIME 21:16:16;
MODIFIED	= DATE 21-08-23  TIME 23:33:28;
FILE_NAME	= _PLACE_T;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1406;
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
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1:GRINDER] ;
   4:   ;
   5:  IF DI[15:T1_UNLOCKED_FIXT]=OFF AND DI[11:T1_COVER_CLAMPED]=ON,JMP LBL[99] ;
   6:   ;
   7:  CALL _T1_UNCLAMP    ;
   8:  WAIT DI[15:T1_UNLOCKED_FIXT]=ON    ;
   9:  ! Set Offset ;
  10:  PR[4:TOOL_OFFSET]=PR[4:TOOL_OFFSET]-PR[4:TOOL_OFFSET]    ;
  11:   ;
  12:  !SAFE APPROACH ;
  13:  PR[4,3:TOOL_OFFSET]=(65) ;
  14:L P[1:atCover] 500mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  15:   ;
  16:  !PLACE T1 DUST COVER ;
  17:L P[1:atCover] 100mm/sec FINE    ;
  18:  CALL _ATI_UNLOCK    ;
  19:  WAIT    .50(sec) ;
  20:  PAYLOAD[3:MASTER] ;
  21:  CALL _T1_CLAMP    ;
  22:   ;
  23:  !SAFE RETREAT ;
  24:L P[1:atCover] 100mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  25:  LBL[99] ;
  26:  END ;
  27:  !**TouchUp** ;
  28:L P[1:atCover] 100mm/sec FINE    ;
  29:   ;
/POS
P[1:"atCover"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.820  mm,	Y = -1069.700  mm,	Z =  -249.821  mm,
	W =     -.334 deg,	P =     -.245 deg,	R =   -10.111 deg
};
/END
