// Prototypes
string sub5(int intParam1);
object sub4(int intParam1, string stringParam2);
void sub3();
void sub2(int intParam1, int intParam2);
void sub1();

string sub5(int intParam1) {
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

object sub4(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub5(intParam1);
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

void sub3() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void sub2(int intParam1, int intParam2) {
	sub3();
	{
		object object1 = sub4(intParam1, "WP_gspawn_");
		object object3 = sub4(intParam2, "WP_gspawn_");
		if (GetIsObjectValid(object1)) {
			AddPartyMember(intParam1, object1);
		}
		if (GetIsObjectValid(object3)) {
			AddPartyMember(intParam2, object3);
		}
	}
}

void sub1() {
	SwitchPlayerCharacter(0xFFFFFFFF);
	int nGlobal = GetGlobalNumber("204_B4D4_PARTY_1");
	int int4 = GetGlobalNumber("204_B4D4_PARTY_2");
	sub2(nGlobal, int4);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		CreateItemOnObject("czerkadatapad", GetPCSpeaker(), 1, 0);
	}
	else {
		if ((nParam1 == 2)) {
			if (GetIsXBox()) {
				DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "CzerkaDatapad"), 0.0, 0, 0.0, 0);
				SetGlobalNumber("203TEL_Habat", 12);
				SetGlobalNumber("203TEL_B-4D4_PC", 0);
				SetGlobalNumber("203TEL_T1N1_Done", 2);
				SetGlobalFadeIn(0.7, 0.2, 0.0, 0.0, 0.0);
				SetGlobalBoolean("203TEL_Mainframe_Seal", 1);
				DelayCommand(0.5, sub1());
				RemoveAvailableNPC(1);
				DelayCommand(1.0, AssignCommand(GetObjectByTag("203_Habat", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
			else {
				DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "CzerkaDatapad"), 0.0, 0, 0.0, 0);
				SetGlobalNumber("203TEL_Habat", 12);
				SetGlobalNumber("203TEL_B-4D4_PC", 0);
				SetGlobalNumber("203TEL_T1N1_Done", 2);
				SetGlobalFadeIn(0.7, 0.2, 0.0, 0.0, 0.0);
				SetGlobalBoolean("203TEL_Mainframe_Seal", 1);
				RemoveAvailableNPC(1);
				sub1();
			}
		}
	}
}
