void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("502OND_End_First") != 2)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oPC = GetFirstPC();
	object oFake_replace = GetObjectByTag("cp_replace", 0);
	SetGlobalLocation("k2_temp_loc", GetLocation(oFake_replace));
	AssignCommand(oFake_replace, ActionMoveToObject(oPC, 0, 3.0));
	oFake_replace = GetObjectByTag("fake_replace", 0);
	DelayCommand(0.5, AssignCommand(oFake_replace, ActionStartConversation(GetFirstPC(), "cp_replac", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
