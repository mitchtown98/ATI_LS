/PROG  SENDSYSV	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Send PC SysVar";
PROG_SIZE	= 274;
CREATE		= DATE 10-10-14  TIME 11:56:24;
MODIFIED	= DATE 99-06-01  TIME 14:23:06;
FILE_NAME	= SENDDATA;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 646;
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
   1:  !Send SysVar Macro ;
   2:  CALL GESNDSYS(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6]) ;
/POS
/END
