// Prototypes
void sub4();
string sub3(int intParam1);
void sub2();
void sub1();

void sub4() {
	effect effect1 = EffectCutSceneParalyze();
	object oNPC = GetPartyMemberByIndex(0);
	ApplyEffectToObject(1, effect1, oNPC, 4.0);
	StartNewModule("410DXN", "From_403DXN", "", "", "", "", "", "");
}

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

void sub2() {
	AurPostString("a_to_tomb: Clear Spawnins", 15, 21, 10.0);
	int int1;
	int int2 = GetIsXBox();
	string string1;
	object object1;
	int1 = 0;
	while ((int1 < 12)) {
		string1 = sub3(int1);
		object1 = GetObjectByTag(string1, 0);
		if (GetIsObjectValid(object1)) {
			DestroyObject(object1, 0.0, int2, 0.0, 0);
		}
		(int1++);
	}
	object oRemote = GetObjectByTag("remote", 0);
	if (GetIsObjectValid(oRemote)) {
		DestroyObject(oRemote, 0.0, int2, 0.0, 0);
	}
}

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		int nGlobal = GetGlobalNumber("403DXN_PARTY2_NPC1");
		int int5 = GetGlobalNumber("403DXN_PARTY2_NPC2");
		int int7 = GetGlobalNumber("403DXN_PARTY2_NPC3");
		int int9 = 0;
		int9 = 0;
		while ((int9 < 12)) {
			if ((((int9 != nGlobal) && (int9 != int5)) && (int9 != int7))) {
				SetNPCSelectability(int9, 0);
			}
			(int9++);
		}
		sub1();
		sub2();
	}
	else {
		if ((nParam1 == 2)) {
			DelayCommand(1.0, sub4());
		}
	}
}
