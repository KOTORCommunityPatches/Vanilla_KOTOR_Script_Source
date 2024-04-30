void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if ((GetGlobalNumber("301NAR_Domo") == 3)) {
		CreateObject(1, "twilekdomo", GetLocation(GetObjectByTag("wp_twidomo_sp", 0)), 0);
		AssignCommand(GetObjectByTag("Twilek_Servant", 0), ActionJumpToObject(GetObjectByTag("wp_servant_dance", 0), 1));
		SetGlobalNumber("301NAR_Domo", 4);
		object oTwilekDomo = GetObjectByTag("TwilekDomo", 0);
		object oVogga_Door = GetObjectByTag("Vogga_Door", 0);
		AssignCommand(oVogga_Door, ActionUnlockObject(oVogga_Door));
		DelayCommand(0.1, AssignCommand(oVogga_Door, ActionOpenDoor(oVogga_Door)));
		AssignCommand(oTwilekDomo, ClearAllActions());
		AssignCommand(oEntering, ClearAllActions());
		AssignCommand(oTwilekDomo, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

