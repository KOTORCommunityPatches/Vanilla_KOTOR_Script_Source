void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((!GetIsObjectValid(GetObjectByTag("Zuka", 0)))) {
		CreateObject(1, "g_mandalor002", GetLocation(GetObjectByTag("wp_851DEM_ZUKA", 0)), 0);
	}
	object oZuka = GetObjectByTag("Zuka", 0);
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	if ((GetGlobalNumber("851NIH_Bomb_Ravager") == 1)) {
		SetLocalBoolean(OBJECT_SELF, 30, 0);
	}
	SetGlobalNumber("851NIH_BOMBSITE", 4);
	DelayCommand(0.5, AssignCommand(oZuka, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(oZuka, ActionStartConversation(GetFirstPC(), "851dem", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
