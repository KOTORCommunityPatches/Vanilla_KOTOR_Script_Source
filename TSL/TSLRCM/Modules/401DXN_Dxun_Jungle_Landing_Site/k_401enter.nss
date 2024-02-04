// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	if ((d100(1) < 2)) {
		CreateObject(1, "hk_random1", Location(Vector((-106.61481), (-107.25502), 43.45058), 0.0), 0);
		CreateObject(1, "hk_random", Location(Vector((-103.12444), (-106.71828), 43.45058), 0.0), 0);
		CreateObject(1, "hk_random", Location(Vector((-106.55945), (-105.93459), 43.45058), 0.0), 0);
	}
	else {
		if ((d100(1) < 2)) {
			CreateObject(1, "hk_random1", Location(Vector(31.82547, (-130.72356), 64.92439), 0.0), 0);
			CreateObject(1, "hk_random", Location(Vector(31.08695, (-133.86707), 64.92439), 0.0), 0);
			CreateObject(1, "hk_random", Location(Vector(34.99251, (-132.79468), 64.92439), 0.0), 0);
		}
		else {
			if ((d100(1) < 2)) {
				CreateObject(1, "hk_random1", Location(Vector(40.55709, 18.98995, 95.83264), 0.0), 0);
				CreateObject(1, "hk_random", Location(Vector(42.72291, 20.65228, 95.83264), 0.0), 0);
				CreateObject(1, "hk_random", Location(Vector(43.20227, 18.57807, 95.83264), 0.0), 0);
			}
			else {
				return;
			}
		}
	}
}

void sub2() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object object1 = SpawnAvailableNPC(6, GetLocation(GetObjectByTag("wp_kreia_reunion", 0)));
	SpawnAvailableNPC(GetGlobalNumber("403DXN_PARTY2_NPC1"), GetLocation(GetObjectByTag("wp_party2_reunion", 0)));
	AssignCommand(object1, ClearAllActions());
	DelayCommand(0.3, AssignCommand(object1, ActionStartConversation(GetFirstPC(), "reunion", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
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
	object oTo_402 = GetObjectByTag("To_402", 0);
	object object3;
	object object4;
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	if ((!GetGlobalBoolean("401_FIRST_ENTER"))) {
		SetGlobalBoolean("401_FIRST_ENTER", 1);
		SetGlobalNumber("401DXN_Visited", 1);
	}
	if (((!GetIsObjectValid(GetObjectByTag("man_guide", 0))) && (GetGlobalNumber("403DXN_Camp_Visited") > 0))) {
		CreateObject(1, "f_man_guide", GetLocation(GetWaypointByTag("WP_MANSPAWN")), 0);
		SetGlobalNumber("401DXN_Man_Guide", 1);
	}
	if ((((GetJournalEntry("altroute") == 20) && (!GetLocalBoolean(oTo_402, 41))) && GetIsObjectValid(GetObjectByTag("atton", 0)))) {
		if ((!IsNPCPartyMember(0))) {
			DestroyObject(GetObjectByTag("atton", 0), 0.0, 0, 0.0, 0);
		}
		SetLocalBoolean(oTo_402, 41, 1);
	}
	if (((!GetLocalBoolean(OBJECT_SELF, 51)) && (GetGlobalNumber("506OND_End") > 0))) {
		AurPostString("Reunion Starts...", 5, 5, 5.0);
		SetNPCSelectability(GetGlobalNumber("403DXN_PARTY2_NPC1"), 1);
		SetNPCSelectability(GetGlobalNumber("403DXN_PARTY2_NPC2"), 1);
		SetNPCSelectability(GetGlobalNumber("403DXN_PARTY2_NPC3"), 1);
		SetLocalBoolean(OBJECT_SELF, 51, 1);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
		DelayCommand(0.2, sub1());
		DelayCommand(1.0, sub2());
	}
	if ((GetObjectByTag("hk_random1", 0) == OBJECT_INVALID)) {
		sub3();
	}
}