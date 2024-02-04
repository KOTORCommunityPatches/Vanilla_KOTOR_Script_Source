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
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_6);
	float float1 = IntToFloat(GetCurrentHitPoints(OBJECT_SELF));
	float float3 = IntToFloat(GetMaxHitPoints(OBJECT_SELF));
	float float5 = (float1 / float3);
	if ((float5 <= 0.1)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		object oSamhan = GetObjectByTag("Samhan", 0);
		CancelCombat(oSamhan);
		AssignCommand(oSamhan, ClearAllActions());
		AssignCommand(oSamhan, ClearAllEffects());
		AssignCommand(oSamhan, SurrenderToEnemies());
		ChangeToStandardFaction(oSamhan, 5);
		SetLocalBoolean(oSamhan, 37, 1);
		object oPC = GetFirstPC();
		CancelCombat(oPC);
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ClearAllEffects());
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(1.0, AssignCommand(oSamhan, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}