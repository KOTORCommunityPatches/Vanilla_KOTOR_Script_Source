// Prototypes
void sub2();
void sub1();

void sub2() {
	AssignCommand(GetPartyLeader(), ClearAllActions());
	SetMinOneHP(GetPartyLeader(), 1);
	AssignCommand(GetPartyLeader(), ActionStartConversation(GetPartyLeader(), "attsion", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void sub1() {
	SwitchPlayerCharacter(0);
}

void main() {
	object oPC = GetFirstPC();
	if ((oPC != GetEnteringObject())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	if ((GetGlobalNumber("003EBO_Disciple_Atton") < 4)) {
		SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
		object o909sion = CreateObject(1, "909sion", Location(Vector((-5.87946), 60.94387, 3.0), 4.39204), 0);
		AssignCommand(oPC, ActionJumpToLocation(Location(Vector(0.50149, 84.11099, 3.0), 0.0)));
		DelayCommand(0.3, sub1());
		DelayCommand(0.5, sub2());
	}
	else {
		object object6 = SpawnAvailableNPC(11, Location(Vector((-0.35752), 78.33726, 3.0), 91.62663));
		object object8 = SpawnAvailableNPC(0, Location(Vector((-0.47338), 62.00759, 3.0), 271.62665));
		AssignCommand(object8, ActionStartConversation(oPC, "903atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}