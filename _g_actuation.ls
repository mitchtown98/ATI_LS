/PROG  _G_ACTUATION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 429;
CREATE		= DATE 21-08-19  TIME 21:16:10;
MODIFIED	= DATE 21-08-19  TIME 21:16:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 857;
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
   1:  IF R[3:TOOL #]<>1,JMP LBL[99] ;
   2:  DO[9:EXTD_COMPLY]=OFF ;
   3:  DO[10:RETR_COMPLY]=PULSE,0.5sec ;
   4:  DO[9:EXTD_COMPLY]=OFF ;
   5:  DO[10:RETR_COMPLY]=ON ;
   6:  WAIT   1.00(sec) ;
   7:  DO[10:RETR_COMPLY]=PULSE,0.5sec ;
   8:  DO[9:EXTD_COMPLY]=OFF ;
   9:  DO[10:RETR_COMPLY]=ON ;
  10:  WAIT   1.00(sec) ;
  11:  DO[10:RETR_COMPLY]=PULSE,0.5sec ;
  12:  DO[9:EXTD_COMPLY]=OFF ;
  13:  DO[10:RETR_COMPLY]=ON ;
  14:  WAIT   1.00(sec) ;
  15:  DO[10:RETR_COMPLY]=PULSE,0.5sec ;
  16:  DO[9:EXTD_COMPLY]=OFF ;
  17:  DO[10:RETR_COMPLY]=ON ;
  18:  WAIT   1.00(sec) ;
  19:  LBL[99] ;
/POS
/END
