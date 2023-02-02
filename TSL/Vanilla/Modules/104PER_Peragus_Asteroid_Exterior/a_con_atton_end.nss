void main() {
	object oHarbAnimController = GetObjectByTag("HarbAnimController", 0);
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(GetFirstPC(), SetFacing(270.0));
	PlayRoomAnimation("104perg", 2);
	DelayCommand(76.0, ActionDoCommand(PlayRoomAnimation("104perg", 3)));
	AssignCommand(oHarbAnimController, ActionStartConversation(GetFirstPC(), "harbcs", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
