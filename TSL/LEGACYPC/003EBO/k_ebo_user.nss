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
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 4001:
			{
				object oHandmaiden = GetObjectByTag("Handmaiden", 0);
				object oPC = GetFirstPC();
				if ((!GetIsObjectValid(oHandmaiden))) {
				return;
				}
				SetLocalBoolean(oHandmaiden, 28, 0);
				SetLocalBoolean(oHandmaiden, 27, 1);
				AssignCommand(oHandmaiden, SurrenderToEnemies());
				CancelCombat(oHandmaiden);
				CancelCombat(GetFirstPC());
				ChangeToStandardFaction(oHandmaiden, 2);
				ChangeToStandardFaction(oPC, 2);
				NoClicksFor(1.2);
				SetMinOneHP(oPC, 0);
				SetMinOneHP(oHandmaiden, 0);
				effect efHeal = EffectHeal((GetMaxHitPoints(oPC) - GetCurrentHitPoints(oPC)));
				ApplyEffectToObject(0, efHeal, oPC, 0.0);
				effect effect3 = EffectHeal((GetMaxHitPoints(oHandmaiden) - GetCurrentHitPoints(oHandmaiden)));
				ApplyEffectToObject(0, effect3, oHandmaiden, 0.0);
				DelayCommand(1.1, AssignCommand(oHandmaiden, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				object oWp_gspawn_handmaiden = GetObjectByTag("wp_gspawn_handmaiden", 0);
				DelayCommand(1.5, AssignCommand(oHandmaiden, ActionMoveToLocation(GetLocation(oWp_gspawn_handmaiden), 0)));
				DelayCommand(1.5, AssignCommand(oHandmaiden, ActionDoCommand(SetFacing(GetFacing(oWp_gspawn_handmaiden)))));
				SetForfeitConditions(0);
				object oCargoDoor = GetObjectByTag("CargoDoor", 0);
				AssignCommand(oCargoDoor, ActionOpenDoor(oCargoDoor));
			}
			break;
		case 1:
			DelayCommand(1.0, ExecuteScript("a_holoworld", GetFirstPC(), 0xFFFFFFFF));
			break;
	}
}

