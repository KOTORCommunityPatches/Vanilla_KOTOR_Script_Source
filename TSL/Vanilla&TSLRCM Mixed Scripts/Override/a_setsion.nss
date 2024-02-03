void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetGlobalNumber("101PER_Sion_Arrives", 1);
	object oAtton = GetObjectByTag("Atton", 0);
	if (GetLocalBoolean(OBJECT_SELF, 20)) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oHarbAnimController = GetObjectByTag("HarbAnimController", 0);
		SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
		AssignCommand(GetFirstPC(), SetFacing(270.0));
		PlayRoomAnimation("104perg", 2);
		DelayCommand(76.0, ActionDoCommand(PlayRoomAnimation("104perg", 3)));
		AssignCommand(oHarbAnimController, ActionStartConversation(GetFirstPC(), "harbcs", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		SetLocalBoolean(OBJECT_SELF, 20, 1);
		AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "104Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

