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

void main() {
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_18);
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if ((GetCurrentHitPoints(OBJECT_SELF) <= 1)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AurPostString("k_sion_damage: Visas below 50% life, start conversation", 10, 10, 5.0);
		object o909sion = GetObjectByTag("909sion", 0);
		NoClicksFor(2.0);
		object oPC = GetFirstPC();
		CancelCombat(OBJECT_SELF);
		CancelCombat(oPC);
		AssignCommand(OBJECT_SELF, SurrenderToEnemies());
		AssignCommand(OBJECT_SELF, ClearAllActions());
		AssignCommand(OBJECT_SELF, ClearAllEffects());
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ClearAllEffects());
		ChangeToStandardFaction(o909sion, 2);
		AssignCommand(o909sion, SurrenderToEnemies());
		AssignCommand(o909sion, ClearAllEffects());
		AssignCommand(o909sion, ClearAllActions());
		SetGlobalNumber("903_Atton_Sion", 1);
		AssignCommand(o909sion, ActionPlayAnimation(26, 1.0, 0.0));
		DelayCommand(1.0, AssignCommand(oPC, ActionStartConversation(GetFirstPC(), "attsion", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

