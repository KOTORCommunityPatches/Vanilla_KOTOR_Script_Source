void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if (((!GetLocalBoolean(OBJECT_SELF, 30)) && (GetGlobalNumber("101PER_Sion_Arrives") == 1))) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oAtton = GetObjectByTag("Atton", 0);
		object oAttonHint = GetObjectByTag("AttonHint", 0);
		object oTrafficEastDoor = GetObjectByTag("TrafficEastDoor", 0);
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		DelayCommand(0.5, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
		ClearAllActions();
		DelayCommand(0.3, AssignCommand(oAttonHint, ActionStartConversation(GetFirstPC(), "106Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
