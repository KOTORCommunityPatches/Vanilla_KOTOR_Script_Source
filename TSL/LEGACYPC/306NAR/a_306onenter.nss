// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oBarPat1 = GetObjectByTag("BarPat1", 0);
	object oBarpat4 = GetObjectByTag("Barpat4", 0);
	object oN_TrandoBrn = GetObjectByTag("N_TrandoBrn", 0);
	object oGrand = GetObjectByTag("Grand", 0);
	object oGranp = GetObjectByTag("Granp", 0);
	object oWeequayd = GetObjectByTag("Weequayd", 0);
	object oWeequayp = GetObjectByTag("Weequayp", 0);
	object oQuarrend = GetObjectByTag("Quarrend", 0);
	object oQuarrenp = GetObjectByTag("Quarrenp", 0);
	object oQuarrenp2 = GetObjectByTag("Quarrenp2", 0);
	DelayCommand(0.3, AssignCommand(oBarPat1, ActionPlayAnimation(37, 1.0, (-1.0))));
	DelayCommand(0.90000004, AssignCommand(oBarpat4, ActionPlayAnimation(37, 1.0, (-1.0))));
	DelayCommand(0.6, AssignCommand(oN_TrandoBrn, ActionPlayAnimation(37, 1.0, (-1.0))));
	DelayCommand(0.1, AssignCommand(oGrand, ActionPlayAnimation(37, 1.0, (-1.0))));
	DelayCommand(1.0, AssignCommand(oGranp, ActionPlayAnimation(38, 1.0, (-1.0))));
	DelayCommand(1.4, AssignCommand(oWeequayd, ActionPlayAnimation(37, 1.0, (-1.0))));
	DelayCommand(1.5, AssignCommand(oWeequayp, ActionPlayAnimation(38, 1.0, (-1.0))));
	DelayCommand(1.7, AssignCommand(oQuarrend, ActionPlayAnimation(37, 1.0, (-1.0))));
	DelayCommand(1.8, AssignCommand(oQuarrenp, ActionPlayAnimation(38, 1.0, (-1.0))));
	DelayCommand(2.2, AssignCommand(oQuarrenp2, ActionPlayAnimation(38, 1.0, (-1.0))));
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	object oDrunk = GetObjectByTag("drunk", 0);
	if ((GetIsObjectValid(oDrunk) && sub1(oDrunk))) {
		SetOrientOnClick(OBJECT_SELF, 0);
		AssignCommand(oDrunk, ActionPlayAnimation(30, 1.0, (-1.0)));
	}
	if ((GetGlobalNumber("301NAR_Red_Eclipse_At") > 2)) {
		if ((GetIsObjectValid(GetObjectByTag("REThugCon", 0)) == 0)) {
			CreateObject(1, "g_blkvulkgang014", GetLocation(GetObjectByTag("SP_RETHUGCON", 0)), 0);
		}
	}
}

