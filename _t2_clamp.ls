/PROG  _T2_CLAMP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 257;
CREATE		= DATE 21-08-19  TIME 21:16:26;
MODIFIED	= DATE 21-08-19  TIME 21:16:26;
FILE_NAME	= _T1_CLAM;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 613;
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
   1:  DO[5:CLAMP_T1_FIXT]=OFF ;
   2:  DO[7:UNCLAMP_T1_FIXT]=OFF ;
   3:  DO[8:UNCLAMP_T2_FIXT]=OFF ;
   4:  DO[6:CLAMP_T2_FIXT]=ON ;
/POS
/END
