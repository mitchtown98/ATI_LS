/PROG  _TOP_G_REVERSE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 413;
CREATE		= DATE 21-08-19  TIME 21:16:28;
MODIFIED	= DATE 21-08-19  TIME 21:16:28;
FILE_NAME	= _RS_G_RE;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 741;
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
   1:  !REVERSE GRIND ;
   2:  AO[1:COMPENSATION]=0 ;
   3:  AO[1:COMPENSATION]=R[18:AO2] ;
   4:  PR[3:WELD OFFSET]=LPOS    ;
   5:  R[77:DIRECTION HOLDER]=PR[3,1:WELD OFFSET]    ;
   6:  R[77:DIRECTION HOLDER]=R[77:DIRECTION HOLDER]+R[6:X-]    ;
   7:  PR[3,1:WELD OFFSET]=(R[77:DIRECTION HOLDER]) ;
   8:  R[78:DOWN HOLDER]=PR[3,3:WELD OFFSET]    ;
   9:  R[78:DOWN HOLDER]=R[78:DOWN HOLDER]+R[75:G TOP DOWN]    ;
  10:  PR[3,3:WELD OFFSET]=R[78:DOWN HOLDER]    ;
  11:L PR[3:WELD OFFSET] R[8:GRINDING SPEED]mm/sec CNT R[12:GRIND CNT]    ;
/POS
/END
