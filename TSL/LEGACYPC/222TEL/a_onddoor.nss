void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ActionPauseConversation();
		AssignCommand(GetObjectByTag("ond_door", 0), CutsceneAttack(GetObjectByTag("sith_door", 0), 239, 1, 5));
		DelayCommand(1.0, ActionResumeConversation());
	}
}

