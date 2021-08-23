/PROG  _PICK_T2_DC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1254;
CREATE		= DATE 21-08-19  TIME 21:16:16;
MODIFIED	= DATE 21-08-23  TIME 23:27:46;
FILE_NAME	= _PICK_T2;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 1774;
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
   3:   ;
   4:  !ADJUST COLL GUARD ;
   5:  R[200:PAYLOAD_ADJUST]=100    ;
   6:  COL GUARD ADJUST R[200] ;
   7:  COL DETECT ON ;
   8:  PAYLOAD[3:MASTER] ;
   9:  $WAITTMOUT=(500) ;
  10:   ;
  11:  CALL _T2_CLAMP    ;
  12:  !CHECK FOR T1 ;
  13:  IF R[3:TOOL #]<>0,JMP LBL[99] ;
  14:  IF DI[2:TOOL_UNLOCKED]<>ON,JMP LBL[99] ;
  15:  IF DI[12:T2_COVER_CLAMPED]=OFF,JMP LBL[99] ;
  16:   ;
  17:  CALL _T2_UNCLAMP    ;
  18:  WAIT DI[16:T2_UNLOCKED_FIXT]=ON    ;
  19:  ! Set Offset ;
  20:  PR[4:TOOL_OFFSET]=PR[4:TOOL_OFFSET]-PR[4:TOOL_OFFSET]    ;
  21:  PR[4,3:TOOL_OFFSET]=(65) ;
  22:   ;
  23:  !SAFE APPROACH ;
  24:L P[1] 500mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET] Wjnt    ;
  25:   ;
  26:  !PICK T2 DUST COVER ;
  27:L P[1] 100mm/sec FINE    ;
  28:  CALL _ATI_LOCK    ;
  29:  WAIT    .50(sec) ;
  30:  WAIT DI[1:TOOL_LOCKED]=OFF AND DI[2:TOOL_UNLOCKED]=OFF TIMEOUT,LBL[1] ;
  31:   ;
  32:  !SAFE RETREAT ;
  33:L P[1] 100mm/sec CNT55 Tool_Offset,PR[4:TOOL_OFFSET]    ;
  34:  JMP LBL[99] ;
  35:   ;
  36:  LBL[1] ;
  37:  R[16:DUST COVER ON T2]=1    ;
  38:  CALL _ATI_UNLOCK    ;
  39:   ;
  40:  LBL[99] ;
  41:  END ;
  42:  !**TouchUp** ;
  43:L P[1] 100mm/sec FINE    ;
  44:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -142.967  mm,	Y = -1021.744  mm,	Z =  -174.356  mm,
	W =     -.057 deg,	P =      .437 deg,	R =   -10.606 deg
};
/END
