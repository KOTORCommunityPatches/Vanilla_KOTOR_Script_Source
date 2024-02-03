void main() {
	object oPC = GetFirstPC();
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ActionPauseConversation();
		DelayCommand(2.0, AssignCommand(oPC, ActionPlayAnimation(3, 1.0, 7.0)));
		talent talSpell = TalentSpell(270);
		DelayCommand(11.0, AssignCommand(oPC, ActionUseTalentOnObject(talSpell, oPC)));
		DelayCommand(11.5, AssignCommand(oPC, ClearAllActions()));
		DelayCommand(14.0, ActionResumeConversation());
	}
	if ((nParam1 == 2)) {
		SetLightsaberPowered(oPC, 1, 1, 1);
	}
}

