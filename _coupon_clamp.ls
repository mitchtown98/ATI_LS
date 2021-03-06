/PROG  _COUPON_CLAMP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 391;
CREATE		= DATE 21-08-19  TIME 21:16:02;
MODIFIED	= DATE 21-08-19  TIME 21:16:02;
FILE_NAME	= _CLAMP_C;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 851;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  IF DI[3:PART_PRES1]=OFF AND DI[4:PART_PRES2]=OFF,JMP LBL[99] ;
   2:   ;
   3:  !WELDED PART PRESENT ;
   4:  WAIT DI[3:PART_PRES1]=ON AND DI[4:PART_PRES2]=ON    ;
   5:   ;
   6:  !CLAMP PART ;
   7:  DO[4:UNCLAMP_PART]=OFF ;
   8:  DO[3:CLAMP_PART]=ON ;
   9:  WAIT DI[5:PART1_CLAMPED]=ON AND DI[6:PART2_CLAMPED]=ON    ;
  10:   ;
  11:  LBL[99] ;
/POS
/END
