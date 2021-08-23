/PROG  _MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2175;
CREATE		= DATE 21-08-19  TIME 21:16:12;
MODIFIED	= DATE 21-08-19  TIME 21:16:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 105;
MEMORY_SIZE	= 2827;
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
   1:  !-------------------- ;
   2:  !Main Program ;
   3:  !-------------------- ;
   4:  ! ;
   5:  !Call Initialize, Run background ;
   6:  !brings robot to home posn ;
   7:  CALL _INT    ;
   8:  CALL _MOVE_HOME    ;
   9:  PAUSE ;
  10:  !NO TOOL IN MASTER ;
  11:  !DUST COVER IN MASTER ;
  12:  CALL _T1_CLAMP    ;
  13:  WAIT    .50(sec) ;
  14:  CALL _T2_CLAMP    ;
  15:  WAIT    .50(sec) ;
  16:  IF R[3:TOOL #]=0 AND R[15:DUST COVER ON T1]=0,CALL _PLACE_T2_DC ;
  17:  //IF R[3:TOOL #]=0 AND R[16:DUST COVER ON T2]=1,CALL _PLACE_T1_DC ;
  18:   ;
  19:  !NO TOOL IN MASTER ;
  20:  IF R[3:TOOL #]=0,CALL _NO_TOOL ;
  21:   ;
  22:  !GRINDER TOOL 1 ;
  23:  IF R[3:TOOL #]=1,JMP LBL[1] ;
  24:   ;
  25:  !SANDER TOOL 2 ;
  26:  IF R[3:TOOL #]=2,CALL _TOOL_2 ;
  27:   ;
  28:  !Start of the Main loop ;
  29:  LBL[1] ;
  30:  !Start of the Main loop ;
  31:  OVERRIDE=R[1:Override Speed] ;
  32:  !COUPON IN PLACE ;
  33:  IF DI[3:PART_PRES1]=ON AND DI[4:PART_PRES2]=ON,CALL _COUPON_CLAMP ;
  34:   ;
  35:  !COUPON NOT CLAMPED ;
  36:  IF DI[5:PART1_CLAMPED]<>ON AND DI[6:PART2_CLAMPED]<>ON,JMP LBL[99] ;
  37:   ;
  38:  IF (F[5:GRIND_LS]=ON) THEN ;
  39:  DO[13:(NOT USED)VACUUM ON]=ON ;
  40:  OVERRIDE=R[1:Override Speed] ;
  41:  CALL _PICK_T1    ;
  42:  CALL _GRIND_LEFT_SIDE    ;
  43:  CALL _TOOL_1    ;
  44:  CALL _SAND_LEFT_SIDE    ;
  45:  CALL _TOOL_2    ;
  46:  DO[13:(NOT USED)VACUUM ON]=OFF ;
  47:  R[180:COUNTER]=1    ;
  48:  F[5:GRIND_LS]=(OFF) ;
  49:  ENDIF ;
  50:   ;
  51:  IF (F[6:GRIND_RS]=ON) THEN ;
  52:  OVERRIDE=R[1:Override Speed] ;
  53:  DO[13:(NOT USED)VACUUM ON]=ON ;
  54:  CALL _PICK_T1    ;
  55:  CALL _GRIND_RIGHT_SIDE    ;
  56:  CALL _TOOL_1    ;
  57:  CALL _SAND_RIGHT_SIDE    ;
  58:  CALL _TOOL_2    ;
  59:  R[180:COUNTER]=1    ;
  60:  DO[13:(NOT USED)VACUUM ON]=OFF ;
  61:  F[6:GRIND_RS]=(OFF) ;
  62:  ENDIF ;
  63:   ;
  64:   ;
  65:  IF (F[7:GRIND_TS]=ON) THEN ;
  66:  OVERRIDE=R[1:Override Speed] ;
  67:  DO[13:(NOT USED)VACUUM ON]=ON ;
  68:  CALL _PICK_T1    ;
  69:  CALL _GRIND_TOP_SIDE    ;
  70:  CALL _TOOL_1    ;
  71:  CALL _SAND_TOP_SIDE    ;
  72:  CALL _TOOL_2    ;
  73:  R[180:COUNTER]=1    ;
  74:  DO[13:(NOT USED)VACUUM ON]=OFF ;
  75:  F[7:GRIND_TS]=(OFF) ;
  76:  ENDIF ;
  77:   ;
  78:  IF (F[8:SHIP_POS]=ON) THEN ;
  79:  OVERRIDE=R[1:Override Speed] ;
  80:  IF DO[102:PERCH POS]=ON,JMP LBL[5] ;
  81:  //CALL _MOVE_HOME    ;
  82:  LBL[5] ;
  83:  CALL _SHIPPING_POS    ;
  84:  CALL _MOVE_HOME    ;
  85:J PR[1:HOME] 10% CNT0    ;
  86:  CALL _COUPON_UNCLAMP    ;
  87:  F[8:SHIP_POS]=(OFF) ;
  88:  PAUSE ;
  89:  ENDIF ;
  90:   ;
  91:  IF (R[3:TOOL #]=3) THEN ;
  92:  OVERRIDE=R[1:Override Speed] ;
  93:  CALL _MOVE_HOME    ;
  94:  LBL[10] ;
  95:  CALL _T1_UNCLAMP    ;
  96:  WAIT    .50(sec) ;
  97:  CALL _T2_UNCLAMP    ;
  98:  CALL NO_TOOL    ;
  99:  JMP LBL[10] ;
 100:  ENDIF ;
 101:   ;
 102:  CALL _DEMO    ;
 103:   ;
 104:  LBL[99] ;
 105:  JMP LBL[1] ;
/POS
/END
