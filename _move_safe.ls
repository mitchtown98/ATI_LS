/PROG  _MOVE_SAFE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2087;
CREATE		= DATE 21-08-19  TIME 21:16:14;
MODIFIED	= DATE 21-08-19  TIME 21:16:14;
FILE_NAME	= _MOVE_SA;
VERSION		= 0;
LINE_COUNT	= 91;
MEMORY_SIZE	= 2515;
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
   1:  !------------------------- ;
   2:  !Check Current Position and ;
   3:  !Move to a Safe Position ;
   4:  !J1 Does not move ;
   5:  !------------------------- ;
   6:   ;
   7:  !------------------------- ;
   8:  LBL[1:Start] ;
   9:  !------------------------- ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=1 ;
  12:   ;
  13:  CALL _T1_UNCLAMP    ;
  14:  WAIT    .50(sec) ;
  15:  CALL _T2_UNCLAMP    ;
  16:  CALL _GET_CURR_JOINT    ;
  17:  CALL _GET_CURR_XYZWPR    ;
  18:   ;
  19:  !Test J2 ;
  20:  IF R[195:JPOS P2]>=45,JMP LBL[10] ;
  21:  IF R[195:JPOS P2]<=30,JMP LBL[20] ;
  22:   ;
  23:  !------------------------- ;
  24:  !**J2 GREATER THAN 45 ;
  25:  LBL[10:ROBOT AT FIXTURE] ;
  26:  !------------------------- ;
  27:  PR[8:Retreat]=PR[8:Retreat]-PR[8:Retreat]    ;
  28:  PR[8,3:Retreat]=50    ;
  29:  PR[5:LPOS]=LPOS    ;
  30:L PR[5:LPOS] 100mm/sec CNT10 Tool_Offset,PR[8:Retreat]    ;
  31:   ;
  32:  !------------------------- ;
  33:  !**J2 LESS THAN 30 ;
  34:  LBL[20:MoveSafe !At Fix] ;
  35:  !------------------------- ;
  36:  IF R[3:TOOL #]=1,JMP LBL[21] ;
  37:  IF R[3:TOOL #]=2,JMP LBL[22] ;
  38:  JMP LBL[22] ;
  39:   ;
  40:  !**TOOL1 PRESENT** ;
  41:  !------------------------- ;
  42:  LBL[21:MoveSafe with T1] ;
  43:  !------------------------- ;
  44:   ;
  45:  !ADJUST COLL GUARD ;
  46:  R[200:PAYLOAD_ADJUST]=160    ;
  47:  COL GUARD ADJUST R[200] ;
  48:  COL DETECT ON ;
  49:  PAYLOAD[1:GRINDER] ;
  50:   ;
  51:  PR[6:JPOS]=JPOS    ;
  52:  PR[6,1:JPOS]=(-90)    ;
  53:  PR[6,2:JPOS]=(-21)    ;
  54:  PR[6,3:JPOS]=((-29)) ;
  55:  PR[6,5:JPOS]=((-20)) ;
  56:  PR[6,6:JPOS]=(115) ;
  57:J PR[6:JPOS] 12% CNT50    ;
  58:  !**END MOVE SAFE LBL[21]** ;
  59:  JMP LBL[99] ;
  60:   ;
  61:  !**TOOL2 PRESENT** ;
  62:  !------------------------- ;
  63:  LBL[22:MoveSafe with T2] ;
  64:  !------------------------- ;
  65:   ;
  66:  !ADJUST COLL GUARD ;
  67:  R[200:PAYLOAD_ADJUST]=100    ;
  68:  COL GUARD ADJUST R[200] ;
  69:  COL DETECT ON ;
  70:  PAYLOAD[2:SANDER] ;
  71:   ;
  72:  PR[6:JPOS]=JPOS    ;
  73:  PR[6,1:JPOS]=(-90)    ;
  74:  PR[6,2:JPOS]=(-20)    ;
  75:  PR[6,3:JPOS]=((-29)) ;
  76:  PR[6,4:JPOS]=(0) ;
  77:  PR[6,5:JPOS]=((-20)) ;
  78:  PR[6,6:JPOS]=(115) ;
  79:J PR[6:JPOS] 12% CNT50    ;
  80:  !------------------------- ;
  81:  !**FINAL MOVE** ;
  82:  LBL[99] ;
  83:  PR[6:JPOS]=JPOS    ;
  84:  PR[6,1:JPOS]=(-90)    ;
  85:  PR[6,2:JPOS]=(-20)    ;
  86:  PR[6,3:JPOS]=((-29)) ;
  87:  PR[6,4:JPOS]=(0) ;
  88:  PR[6,5:JPOS]=((-20)) ;
  89:  PR[6,6:JPOS]=(180) ;
  90:J PR[6:JPOS] 12% FINE    ;
  91:   ;
/POS
/END
