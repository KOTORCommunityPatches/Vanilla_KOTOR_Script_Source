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
void sub3(object objectParam1, int intParam2);
void sub2(object objectParam1);
object sub1(string stringParam1, int intParam2);

void sub3(object objectParam1, int intParam2) {
	int nAlign = GetGoodEvilValue(objectParam1);
	int int3;
	if ((((intParam2 == intGLOB_22) || (intParam2 == intGLOB_23)) || (intParam2 == intGLOB_24))) {
		int3 = 3;
	}
	else {
		int3 = 2;
	}
	int int4;
	int int5;
	if ((nAlign >= 85)) {
		int5 = 1;
	}
	else {
		if (((nAlign < 85) && (nAlign > 60))) {
			int5 = 2;
		}
		else {
			if (((nAlign <= 60) && (nAlign >= 40))) {
				int5 = 3;
			}
			else {
				if (((nAlign < 40) && (nAlign >= 15))) {
					int5 = 4;
				}
				else {
					int5 = 5;
				}
			}
		}
	}
	int4 = ((int5 + intParam2) * 2);
	if ((int4 < 0)) {
		int4 = (int4 * (-1));
	}
	if ((int4 == 0)) {
		int4 = 1;
	}
	if (((int5 == 1) && (intParam2 == intGLOB_25))) {
		int4 = 1;
	}
	else {
		if (((int5 == 5) && (intParam2 == intGLOB_24))) {
			int4 = 1;
		}
	}
	AurPostString(("Hit = " + IntToString(int4)), 5, 5, 4.0);
	AdjustAlignment(objectParam1, int3, int4, 0);
}

void sub2(object objectParam1) {
	sub3(objectParam1, intGLOB_22);
}

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	object oBostuco;
	switch (nParam1) {
		case 0:
			int3 = GetJournalEntry("matter_leader");
			AddJournalQuestEntry("matter_leader", (int3 + 10), 0);
			break;
		case 1:
			sub1("npc_ond_soldier", 1);
			sub1("npc_ond_soldier", 2);
			oBostuco = sub1("npc_cp_replace", 0);
			DelayCommand(0.1, SetLocalBoolean(oBostuco, 50, 1));
			break;
		case 2:
			sub2(GetPCSpeaker());
			SetLocalBoolean(OBJECT_SELF, 51, 1);
			oBostuco = GetObjectByTag("g_anda", 0);
			SetLocalBoolean(oBostuco, 41, 1);
			oBostuco = GetObjectByTag("bostuco", 0);
			if (GetIsObjectValid(oBostuco)) {
				int3 = GetJournalEntry("matter_leader");
				AddJournalQuestEntry("matter_leader", (int3 + 10), 0);
				SetGlobalNumber("502OND_Captain_Killer", (GetGlobalNumber("502OND_Captain_Killer") + 1));
			}
			SetGlobalNumber("502OND_SkyRamp_Boom", 1);
			break;
		case 3:
			CreateItemOnObject("pl_iziz_security", GetFirstPC(), 1, 0);
			SetLocalBoolean(OBJECT_SELF, 51, 1);
			break;
		case 4:
			oBostuco = GetObjectByTag("g_anda", 0);
			SetLocalBoolean(oBostuco, 40, 1);
			break;
		case 5:
			oBostuco = GetObjectByTag("g_anda", 0);
			SetLocalBoolean(oBostuco, 42, 1);
			int3 = GetJournalEntry("matter_leader");
			AddJournalQuestEntry("matter_leader", (int3 + 10), 0);
			break;
		case 6:
			SetGlobalNumber("502OND_Gelesi_Cantina", 1);
			DestroyObject(GetObjectByTag("gelesi", 0), 0.0, 0, 0.0, 0);
			break;
		case 10:
			SetGlobalNumber("502OND_Vocal_Vaklu", 1);
			break;
		case 11:
			if ((!GetLocalBoolean(OBJECT_SELF, 57))) {
				SetLocalBoolean(OBJECT_SELF, 57, 1);
				GiveGoldToCreature(GetFirstPC(), 2500);
			}
			if ((!GetLocalBoolean(OBJECT_SELF, 56))) {
				SetLocalBoolean(OBJECT_SELF, 56, 1);
				GiveGoldToCreature(GetFirstPC(), 2500);
			}
			if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
				SetLocalBoolean(OBJECT_SELF, 55, 1);
				GiveGoldToCreature(GetFirstPC(), 2500);
			}
			break;
	}
}

