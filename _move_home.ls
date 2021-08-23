/PROG  _MOVE_HOME	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 719;
CREATE		= DATE 21-08-19  TIME 21:16:14;
MODIFIED	= DATE 21-08-19  TIME 21:16:14;
FILE_NAME	= TEST_MOV;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1123;
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
   3:  !------------------------- ;
   4:  !Check Current Position, ;
   5:  !Move to Safe Position, ;
   6:  !Move to Home Position ;
   7:  !------------------------- ;
   8:   ;
   9:  WAIT    .50(sec) ;
  10:  IF DO[101:HOME]=ON,JMP LBL[1] ;
  11:   ;
  12:  !------------------------- ;
  13:  CALL _MOVE_SAFE    ;
  14:  !------------------------- ;
  15:  LBL[1] ;
  16:  !------------------------- ;
  17:   ;
  18:  !ADJUST COLL GUARD ;
  19:  R[200:PAYLOAD_ADJUST]=70    ;
  20:  COL GUARD ADJUST R[200] ;
  21:  COL DETECT ON ;
  22:  PAYLOAD[1:GRINDER] ;
  23:   ;
  24:J PR[1:HOME] 20% CNT20    ;
  25:  WAIT    .50(sec) ;
  26:   ;
  27:  LBL[99] ;
/POS
/END
