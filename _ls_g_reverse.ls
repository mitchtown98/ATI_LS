/PROG  _LS_G_REVERSE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 639;
CREATE		= DATE 21-08-19  TIME 21:16:10;
MODIFIED	= DATE 21-08-19  TIME 21:16:10;
FILE_NAME	= LS_G_REV;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 907;
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
   2:  R[36:G LS HOLDER]=0    ;
   3:  R[38:G LS ROLL HOLDER]=0    ;
   4:  R[98:LS G YNEG HOLDER]=0    ;
   5:  R[99:LS G DN HOLDER]=0    ;
   6:   ;
   7:  PR[3:WELD OFFSET]=LPOS    ;
   8:  R[36:G LS HOLDER]=PR[3,1:WELD OFFSET]    ;
   9:  R[36:G LS HOLDER]=R[36:G LS HOLDER]+R[6:X-]    ;
  10:  PR[3,1:WELD OFFSET]=R[36:G LS HOLDER]    ;
  11:   ;
  12:  !LEFT SIDE ROLL ;
  13:  R[38:G LS ROLL HOLDER]=PR[3,5:WELD OFFSET]    ;
  14:  R[38:G LS ROLL HOLDER]=R[38:G LS ROLL HOLDER]+R[37:GRIND LS ROLL]    ;
  15:  PR[3,5:WELD OFFSET]=R[38:G LS ROLL HOLDER]    ;
  16:   ;
  17:  R[98:LS G YNEG HOLDER]=PR[3,2:WELD OFFSET]    ;
  18:  R[98:LS G YNEG HOLDER]=R[98:LS G YNEG HOLDER]+R[28:LS G Y NEG]    ;
  19:  PR[3,2:WELD OFFSET]=R[98:LS G YNEG HOLDER]    ;
  20:   ;
  21:  R[99:LS G DN HOLDER]=PR[3,3:WELD OFFSET]    ;
  22:  R[99:LS G DN HOLDER]=R[99:LS G DN HOLDER]+R[29:LS G DOWN]    ;
  23:  PR[3,3:WELD OFFSET]=R[99:LS G DN HOLDER]    ;
  24:   ;
  25:L PR[3:WELD OFFSET] R[8:GRINDING SPEED]mm/sec CNT R[12:GRIND CNT]    ;
  26:   ;
/POS
/END
