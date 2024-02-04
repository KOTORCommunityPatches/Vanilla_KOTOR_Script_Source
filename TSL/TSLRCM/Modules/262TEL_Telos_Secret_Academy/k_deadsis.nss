// Globals
	int intGLOB_1 = 1001;
	int intGLOB_2 = 1002;
	int intGLOB_3 = 1003;
	int intGLOB_4 = 1004;
	int intGLOB_5 = 1005;
	int intGLOB_6 = 1006;
	int intGLOB_7 = 1007;
	int intGLOB_8 = 1008;
	int intGLOB_9 = 1009;
	int intGLOB_10 = 1010;
	int intGLOB_11 = 1011;
	int intGLOB_12 = 1012;
	int intGLOB_13 = 2001;
	int intGLOB_14 = 2002;
	int intGLOB_15 = 2003;
	int intGLOB_16 = 2004;
	int intGLOB_17 = 2005;
	int intGLOB_18 = 2006;
	int intGLOB_19 = 2007;
	int intGLOB_20 = 2008;
	int intGLOB_21 = 2009;
	int intGLOB_22 = 2010;
	int intGLOB_23 = 2011;
	int intGLOB_24 = 2012;
	int intGLOB_25 = 2013;
	int intGLOB_26 = 2014;
	int intGLOB_27 = 3001;
	int intGLOB_28 = 3002;
	int intGLOB_29 = 3003;
	int intGLOB_30 = 4001;

// Prototypes
void sub1();

void sub1() {
	CreateObject(1, "n_darthtraya002", GetLocation(GetWaypointByTag("sp_atris_atrend1")), 0);
}

void main() {
	IncrementGlobalNumber("262_Sis_Dead", 1);
	int nGlobal = GetGlobalNumber("262_Sis_Dead");
	SetGlobalNumber("262TEL_Sis_Stun", 0);
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_7);
	AdjustAlignment(GetFirstPC(), 3, 5, 0);
	if ((GetGlobalNumber("262_Sis_Dead") == 5)) {
		object oPC = GetFirstPC();
		int int4 = (GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC));
		ApplyEffectToObject(0, EffectHeal(int4), oPC, 0.0);
		object oLeader = GetPartyLeader();
		object oMedChamber = GetObjectByTag("MedChamber", 0);
		AssignCommand(oMedChamber, ActionOpenDoor(oMedChamber));
		SetLocked(oMedChamber, 0);
		DelayCommand(2.0, AssignCommand(oLeader, ActionJumpToObject(GetWaypointByTag("sp_hand_atrend1"), 1)));
		DelayCommand(3.0, sub1());
		DelayCommand(3.0, AssignCommand(oLeader, ClearAllActions()));
		DelayCommand(3.0, AssignCommand(oLeader, ActionStartConversation(oLeader, "Atrend1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		SetLockOrientationInDialog(oLeader, 0);
	}
}