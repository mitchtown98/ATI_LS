/PROG  _TOOL_STATUS	  Cond
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 193;
CREATE		= DATE 21-08-19  TIME 21:16:26;
MODIFIED	= DATE 21-08-19  TIME 21:16:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 1;
MEMORY_SIZE	= 569;
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
   1:  WHEN DO[2:UNLOCK_TOOL]=ON,CALL ATI_UNLOCK ;
/POS
/END
