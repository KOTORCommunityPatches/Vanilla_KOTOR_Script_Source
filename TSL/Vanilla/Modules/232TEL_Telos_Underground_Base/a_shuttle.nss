void main() {
	SetGlobalBoolean("232_SHUTTLE_GONE", 1);
	DestroyObject(GetObjectByTag("TelosShuttle", 0), 0.0, 1, 0.0, 0);
	PlayRoomAnimation("232Tel14", 2);
	CreateObject(1, "232_hk50", GetLocation(GetObjectByTag("wp_hk501_01", 0)), 0);
	CreateObject(1, "232_hk051", GetLocation(GetObjectByTag("wp_hk502_01", 0)), 0);
	CreateObject(1, "232_hk503", GetLocation(GetObjectByTag("wp_hk503_01", 0)), 0);
	object oDoor_BC = GetObjectByTag("TelosDoor3", 0);
	if ((!GetIsOpen(oDoor_BC))) {
		SetLocked(oDoor_BC, 0);
		AssignCommand(oDoor_BC, ActionOpenDoor(oDoor_BC));
	}
	oDoor_BC = GetObjectByTag("Door_BC", 0);
	if ((!GetIsOpen(oDoor_BC))) {
		SetLocked(oDoor_BC, 0);
		AssignCommand(oDoor_BC, ActionOpenDoor(oDoor_BC));
	}
	DelayCommand(1.0, AssignCommand(GetObjectByTag("232_hk501", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
