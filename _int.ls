/PROG  _INT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "_INT";
PROG_SIZE	= 1231;
CREATE		= DATE 21-08-19  TIME 21:16:10;
MODIFIED	= DATE 21-08-19  TIME 21:16:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 1783;
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
   1:  !INITIALIZE; ;
   2:   ;
   3:  !REGISTERS ;
   4:  R[1:Override Speed]=70    ;
   5:  R[2:S SPEED OVERIDE]=5    ;
   6:  R[4:X POS]=78    ;
   7:  R[5:X+]=48    ;
   8:  R[6:X-]=(-48)    ;
   9:  R[8:GRINDING SPEED]=20    ;
  10:  R[9:SANDING SPEED]=1    ;
  11:  R[10:GRIND RAMP UP]=1.5    ;
  12:  R[11:SANDER RAMP UP]=2    ;
  13:  R[12:GRIND CNT]=10    ;
  14:  R[13:SAND CNT]=2    ;
  15:  R[14:RETREAT UP]=(-30)    ;
  16:  R[17:AO1]=0    ;
  17:  R[18:AO2]=0    ;
  18:  R[19:AO3]=0    ;
  19:   ;
  20:  R[20:GRIND LEFT SIDE]=1    ;
  21:  R[21:GRIND RIGHT SIDE]=1    ;
  22:  R[22:GRIND TOP SIDE]=1    ;
  23:   ;
  24:  R[24:SAND LEFT SIDE]=1    ;
  25:  R[25:SAND RIGHT SIDE]=1    ;
  26:  R[26:SAND TOP SIDE]=1    ;
  27:   ;
  28:  R[28:LS G Y NEG]=(-.25)    ;
  29:  R[35:GRIND LS DOWN]=0    ;
  30:  R[37:GRIND LS ROLL]=13    ;
  31:  R[45:SAND LS DOWN]=7    ;
  32:  R[48:S LS + ROLL]=(-15)    ;
  33:  R[49:S LS - ROLL]=30    ;
  34:  R[50:S LS 2nd + ROLL]=(-30)    ;
  35:  R[55:G RS DOWN]=.5    ;
  36:  R[57:GRIND RS ROLL]=12    ;
  37:  R[65:S RS DOWN]=5    ;
  38:  R[68:S RS ROLL + HOLR]=25    ;
  39:  R[69:S RS ROLL - HOLR]=(-30)    ;
  40:  R[70:S RS 2nd + ROLL]=30    ;
  41:  R[75:G TOP DOWN]=.5    ;
  42:  R[85:S TOP DOWN]=5    ;
  43:  R[87:TS SLIDE TO LS]=(-30)    ;
  44:  R[90:DEMO]=1    ;
  45:  R[100:RETREAT]=(-180)    ;
  46:  R[102:RS_G_Y_NEG]=0    ;
  47:  R[120:DEMO G FWD]=270    ;
  48:   ;
  49:  !DIGITAL OUTPUTS ;
  50:  CALL _VAC_OFF    ;
  51:  CALL _SANDER_OFF    ;
  52:  CALL _GRINDER_OFF    ;
  53:  CALL _COUPON_UNCLAMP    ;
  54:  //CALL _T1_CLAMP    ;
  55:  //WAIT    .50(sec) ;
  56:  //CALL _T2_CLAMP    ;
  57:  //IF DI[9:T1_PRES_FIXT]=ON OR DI[10:T2_PRES_FIXT]=ON OR DI[11:T1_COVER_CLAMPED]=OFF OR DI[12:T2_COVER_CLAMPED]=OFF,JMP LBL[...] ;
  58:  //OVERRIDE=R[1:Override Speed] ;
  59:   ;
  60:  IF DI[17:AIR_PRS_OK]=ON,JMP LBL[1] ;
  61:  MESSAGE[LOW AIR PRESSURE] ;
  62:  PAUSE ;
  63:  LBL[1] ;
  64:   ;
/POS
/END
