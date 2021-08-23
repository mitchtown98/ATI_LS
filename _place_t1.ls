/PROG  _PLACE_T1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1184;
CREATE		= DATE 21-08-19  TIME 21:16:16;
MODIFIED	= DATE 21-08-24  TIME 05:33:56;
FILE_NAME	= _PICK_T1;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 1668;
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
   3:   ;
   4:  !ADJUST COLL GUARD ;
   5:  R[200:PAYLOAD_ADJUST]=120    ;
   6:  COL GUARD ADJUST R[200] ;
   7:  COL DETECT ON ;
   8:  PAYLOAD[1:GRINDER] ;
   9:   ;
  10:  !CHECK FOR T1 ;
  11:  IF R[3:TOOL #]<>1,JMP LBL[99] ;
  12:   ;
  13:  CALL _T1_UNCLAMP    ;
  14:  WAIT DI[15:T1_UNLOCKED_FIXT]=ON    ;
  15:  IF DO[102:PERCH POS]=ON,JMP LBL[5] ;
  16:  ! Set Offset ;
  17:  PR[4:TOOL_OFFSET]=PR[4:TOOL_OFFSET]-PR[4:TOOL_OFFSET]    ;
  18:   ;
  19:  !SAFE APPROACH 1 ;
  20:  PR[4,2:TOOL_OFFSET]=(400) ;
  21:  PR[4,3:TOOL_OFFSET]=(85) ;
  22:J P[1:atTool] 35% CNT80 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  23:  LBL[5] ;
  24:  !SAFE APPROACH 2 ;
  25:  PR[4,2:TOOL_OFFSET]=(0) ;
  26:L P[1:atTool] 500mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  27:   ;
  28:  !PLACE T1 ;
  29:L P[1:atTool] 100mm/sec FINE    ;
  30:  PAYLOAD[3:MASTER] ;
  31:  CALL _ATI_UNLOCK    ;
  32:   ;
  33:  !SAFE RETREAT ;
  34:L P[1:atTool] 100mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  35:  LBL[99] ;
  36:  END ;
  37:  !**Touch up** ;
  38:L P[1:atTool] 100mm/sec FINE    ;
  39:   ;
  40:   ;
  41:   ;
/POS
P[1:"atTool"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    41.099  mm,	Y = -1070.980  mm,	Z =  -284.419  mm,
	W =     -.531 deg,	P =     -.481 deg,	R =   -10.311 deg
};
/END
