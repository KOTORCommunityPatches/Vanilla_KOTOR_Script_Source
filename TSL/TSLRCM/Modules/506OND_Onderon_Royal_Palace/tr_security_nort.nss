void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		return;
	}
	object oKavar = GetObjectByTag("kavar", 0);
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oDoor_secnorth = GetObjectByTag("door_secnorth", 0);
	SetLocked(oDoor_secnorth, 0);
	DelayCommand(0.5, AssignCommand(oDoor_secnorth, ActionOpenDoor(oDoor_secnorth)));
	DelayCommand(2.0, AssignCommand(oKavar, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}