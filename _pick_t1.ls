/PROG  _PICK_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1166;
CREATE		= DATE 21-08-19  TIME 21:16:14;
MODIFIED	= DATE 21-08-21  TIME 05:52:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 1654;
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
   3:  PAYLOAD[3:MASTER] ;
   4:   ;
   5:  !CHECK FOR T1 ;
   6:  IF R[3:TOOL #]<>0,JMP LBL[99] ;
   7:  IF R[3:TOOL #]=2,JMP LBL[99] ;
   8:  IF DI[2:TOOL_UNLOCKED]<>ON,JMP LBL[99] ;
   9:  IF DI[11:T1_COVER_CLAMPED]=ON AND DI[15:T1_UNLOCKED_FIXT]=OFF,JMP LBL[99] ;
  10:   ;
  11:  CALL _T1_UNCLAMP    ;
  12:  WAIT DI[15:T1_UNLOCKED_FIXT]=ON    ;
  13:  ! Set Offset ;
  14:  PR[4:TOOL_OFFSET]=PR[4:TOOL_OFFSET]-PR[4:TOOL_OFFSET]    ;
  15:   ;
  16:  !SAFE APPROACH ;
  17:  PR[4,3:TOOL_OFFSET]=(85) ;
  18:L P[1:atTool] 500mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  19:  !ADJUST COLL GUARD ;
  20:  R[200:PAYLOAD_ADJUST]=120    ;
  21:  COL GUARD ADJUST R[200] ;
  22:  COL DETECT ON ;
  23:  PAYLOAD[1:GRINDER] ;
  24:   ;
  25:  !PICK T1 ;
  26:L P[1:atTool] 100mm/sec FINE    ;
  27:  CALL _ATI_LOCK    ;
  28:  WAIT DI[1:TOOL_LOCKED]=ON    ;
  29:  !SAFE RETREAT 1 ;
  30:L P[1:atTool] 100mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET] ACC50    ;
  31:  !SAFE RETREAT 2 ;
  32:  PR[4,2:TOOL_OFFSET]=250    ;
  33:L P[1:atTool] 500mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  34:  LBL[99] ;
  35:  END ;
  36:  !**Touch up** ;
  37:L P[1:atTool] 100mm/sec FINE    ;
  38:   ;
  39:   ;
  40:   ;
/POS
P[1:"atTool"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    41.099  mm,	Y = -1070.983  mm,	Z =  -284.419  mm,
	W =     -.531 deg,	P =     -.481 deg,	R =   -10.311 deg
};
/END
