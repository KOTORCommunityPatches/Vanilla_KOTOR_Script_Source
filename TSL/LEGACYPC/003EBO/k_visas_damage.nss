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
string sub3(int intParam1);
object sub2(int intParam1, string stringParam2);
void sub1();

string sub3(int intParam1) {
	switch (intParam1) {
		case 0:
			return "atton";
			break;
		case 1:
			return "baodur";
			break;
		case 2:
			return "mand";
			break;
		case 11:
			return "disciple";
			break;
		case 3:
			return "g0t0";
			break;
		case 4:
			return "handmaiden";
			break;
		case 10:
			return "hanharr";
			break;
		case 5:
			return "hk47";
			break;
		case 6:
			return "kreia";
			break;
		case 7:
			return "mira";
			break;
		case 8:
			return "t3m4";
			break;
		case 9:
			return "visasmarr";
			break;
	}
	return "ERROR";
}

object sub2(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub3(intParam1);
		if ((string2 == "ERROR")) {
			return OBJECT_INVALID;
		}
		string1 = (stringParam2 + string2);
	}
	else {
		string1 = stringParam2;
	}
	object object1 = GetObjectByTag(string1, 0);
	object object3;
	if (GetIsObjectValid(object1)) {
		object3 = SpawnAvailableNPC(intParam1, GetLocation(object1));
		if (GetIsObjectValid(object3)) {
			SetCreatureAILevel(object3, 3);
			return object3;
		}
	}
	return OBJECT_INVALID;
}

void sub1() {
	sub2(0, "WP_gspawn_atton");
	if (GetNPCSelectability(4)) {
		sub2(4, "WP_gspawn_handmaiden");
	}
	else {
		if (GetNPCSelectability(11)) {
			sub2(11, "WP_gspawn_disciple");
		}
	}
}

void main() {
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_18);
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	float float1 = IntToFloat(GetCurrentHitPoints(OBJECT_SELF));
	float float3 = IntToFloat(GetMaxHitPoints(OBJECT_SELF));
	float float5 = (float1 / float3);
	if ((float5 <= 0.5)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AurPostString("k_visas_damage: Visas below 50% life, start conversation", 10, 10, 5.0);
		object oVisasCut = GetObjectByTag("VisasCut", 0);
		NoClicksFor(2.0);
		object oPC = GetFirstPC();
		CancelCombat(OBJECT_SELF);
		CancelCombat(oPC);
		AssignCommand(OBJECT_SELF, SurrenderToEnemies());
		AssignCommand(OBJECT_SELF, ClearAllActions());
		AssignCommand(OBJECT_SELF, ClearAllEffects());
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ClearAllEffects());
		ChangeToStandardFaction(oVisasCut, 2);
		AssignCommand(oVisasCut, SurrenderToEnemies());
		AssignCommand(oVisasCut, ClearAllEffects());
		AssignCommand(oVisasCut, ClearAllActions());
		SetLocalBoolean(oVisasCut, 30, 1);
		sub1();
		SetGlobalNumber("003_IN_COMBAT", 0);
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		DelayCommand(1.0, AssignCommand(oVisasCut, ActionStartConversation(GetFirstPC(), "visasmarr", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

