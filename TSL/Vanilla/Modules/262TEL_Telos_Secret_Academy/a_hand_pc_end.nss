void main() {
	if ((GetGlobalBoolean("000_PLAYER_GENDER") == 1)) {
		object oSp_atris_atrend1 = GetWaypointByTag("sp_atris_atrend1");
		object oHandmaiden = GetObjectByTag("Handmaiden", 0);
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(GetFirstPC(), ActionJumpToObject(oSp_atris_atrend1, 1));
		effect efResurrect = EffectResurrection(50);
		ApplyEffectToObject(0, efResurrect, GetObjectByTag("Handmaiden", 0), 0.0);
		DelayCommand(0.7, AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("Handmaiden", 0), "handend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	if ((GetGlobalBoolean("000_PLAYER_GENDER") == 0)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		PlayMovie("MalMov02", 0);
		PlayMovie("MalMov01b", 0);
		StartNewModule("221TEL", "", "", "", "", "", "", "");
	}
}
