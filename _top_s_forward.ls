/PROG  _TOP_S_FORWARD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 349;
CREATE		= DATE 21-08-19  TIME 21:16:28;
MODIFIED	= DATE 21-08-19  TIME 21:16:28;
FILE_NAME	= _TOP_G_F;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 689;
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
   1:  !FORWARD GRIND ;
   2:  AO[1:COMPENSATION]=0 ;
   3:  AO[1:COMPENSATION]=R[17:AO1] ;
   4:  PR[11:SAND OFFSET]=LPOS    ;
   5:  R[86:S TOP HOLDER]=PR[11,2:SAND OFFSET]    ;
   6:  R[86:S TOP HOLDER]=R[86:S TOP HOLDER]+R[87:TS SLIDE TO LS]    ;
   7:  PR[11,2:SAND OFFSET]=R[86:S TOP HOLDER]    ;
   8:L PR[11:SAND OFFSET] 20mm/sec CNT R[13:SAND CNT]    ;
/POS
/END
