/PROG  USERPAGE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Show User Page";
PROG_SIZE	= 214;
CREATE		= DATE 97-09-09  TIME 10:45:18;
MODIFIED	= DATE 99-06-01  TIME 13:05:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 586;
PROTECT		= READ;
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
/MN
   1:  !Show current user page ;
   2:  CALL MHUSERPG    ;
/POS
/END
