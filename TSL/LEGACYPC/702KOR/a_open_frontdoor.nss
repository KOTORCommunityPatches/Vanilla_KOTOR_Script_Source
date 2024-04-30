// Prototypes
void sub1();

void sub1() {
	CreateObject(1, "n_darthsion001", GetLocation(GetObjectByTag("sp_sion", 0)), 0);
	CreateObject(1, "sithassassin", GetLocation(GetObjectByTag("sp_assassin1", 0)), 0);
	CreateObject(1, "sithassassin", GetLocation(GetObjectByTag("sp_assassin2", 0)), 0);
}

void main() {
	object oDoor_enter = GetObjectByTag("door_enter", 0);
	AssignCommand(oDoor_enter, ActionUnlockObject(oDoor_enter));
	AssignCommand(oDoor_enter, ActionOpenDoor(oDoor_enter));
	DestroyObject(GetObjectByTag("SithAssassin", 1), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("SithAssassin", 0), 0.0, 1, 0.0, 0);
	SetLocalBoolean(GetObjectByTag("tr_sion_fight", 0), 55, 1);
	SetLocalBoolean(GetObjectByTag("tr_enter", 0), 41, 1);
	DelayCommand(2.0, sub1());
}

