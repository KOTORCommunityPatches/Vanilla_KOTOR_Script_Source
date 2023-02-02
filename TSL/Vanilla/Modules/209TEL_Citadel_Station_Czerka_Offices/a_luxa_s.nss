void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("203_Luxa", 0), CutsceneAttack(GetObjectByTag("203_Slusk", 0), 217, 4, 0));
	DelayCommand(1.0, ActionResumeConversation());
}
