/PROG  RIFTEK_TRACK_TEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1169;
CREATE		= DATE 22-09-05  TIME 10:57:18;
MODIFIED	= DATE 22-09-05  TIME 11:24:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 1625;
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
  ARC Welding Equipment : 1,*,*,*,*;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
   1:  R[1]=0    ;
   2:  RUN RIFTEK_TRACK_TP ;
   3:   ;
   4:  LBL[1] ;
   5:  R[1]=R[1]+1    ;
   6:   ;
   7:  SKIP CONDITION DO[1:PEREPAD]=ON    ;
   8:L P[1] 100mm/sec FINE    ;
   9:   ;
  10:L P[2] 100mm/sec FINE Skip,LBL[1],PR[R[1]]=LPOS    ;
  11:  DO[2:FOUND]=ON ;
  12:  DO[1:PEREPAD]=OFF ;
  13:  JMP LBL[1] ;
  14:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1423.614868  mm,	Y =   253.949051  mm,	Z =   488.821014  mm,
	W =   178.891998 deg,	P =     3.738998 deg,	R =     4.215000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1423.614868  mm,	Y =  -229.050980  mm,	Z =   488.821045  mm,
	W =   178.891998 deg,	P =     3.738995 deg,	R =     4.214995 deg
};
/END
