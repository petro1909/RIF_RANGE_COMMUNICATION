/PROG  RIFTEK_TRACK_TEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1609;
CREATE		= DATE 22-09-05  TIME 10:57:18;
MODIFIED	= DATE 22-09-07  TIME 19:56:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 2089;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
  ARC Welding Equipment : 1,*,*,*,*;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
   1:  R[1]=0    ;
   2:   ;
   3:  LBL[1] ;
   4:  DO[65]=OFF ;
   5:  R[2]=R[1]    ;
   6:  R[1]=R[1]+1    ;
   7:   ;
   8:  SKIP CONDITION DO[65]=ON    ;
   9:L P[1] 100mm/sec FINE    ;
  10:  RUN RIFTEK_TRACK_TP ;
  11:   ;
  12:L P[2] 100mm/sec FINE Skip,LBL[1],PR[R[1]]=LPOS    ;
  13:   ;
  14:   ;
  15:  IF (R[2]=1) THEN ;
  16:  --eg:delta ;
  17:  PR[50]=PR[R[2]]-PR[R[1]]    ;
  18:  PR[51]=PR[50]    ;
  19:   ;
  20:  ENDIF ;
  21:   ;
  22:  IF (R[2]>1) THEN ;
  23:  --eg:delta ;
  24:  PR[50]=PR[R[2]]-PR[R[1]]    ;
  25:  PR[51]=PR[50]+PR[51]    ;
  26:  PR[51,1]=PR[51,1]/2    ;
  27:  PR[51,2]=PR[51,2]/2    ;
  28:  PR[51,3]=PR[51,3]/2    ;
  29:  PR[51,4]=PR[51,4]/2    ;
  30:  PR[51,5]=PR[51,5]/2    ;
  31:  PR[51,6]=PR[51,6]/2    ;
  32:  ENDIF ;
  33:   ;
  34:   ;
  35:   ;
  36:   ;
  37:  DO[66]=ON ;
  38:  DO[65]=OFF ;
  39:  JMP LBL[1] ;
  40:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =     6.632  mm,	Y =   751.336  mm,	Z =   409.617  mm,
	W =  -175.891 deg,	P =    -1.681 deg,	R =    53.049 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    43.880  mm,	Y =   751.336  mm,	Z =   409.617  mm,
	W =  -175.891 deg,	P =    -1.681 deg,	R =    53.049 deg
};
/END
