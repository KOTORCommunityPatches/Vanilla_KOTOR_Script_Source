void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if ((!GetGlobalBoolean("231TEL_Shield_Network"))) {
		object oBaoDur = GetObjectByTag("BaoDur", 0);
		NoClicksFor(1.0);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		AssignCommand(GetEnteringObject(), ClearAllActions());
		AssignCommand(GetEnteringObject(), JumpToObject(GetObjectByTag("wp_push_back", 0), 1));
		SetLocalBoolean(oBaoDur, 36, 1);
		DelayCommand(0.5, AssignCommand(oBaoDur, ClearAllActions()));
		DelayCommand(0.5, AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "233bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	}
}
