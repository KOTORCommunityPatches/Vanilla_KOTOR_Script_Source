void main() {
	object oEnd_sith1 = GetObjectByTag("end_sith1", 0);
	object oEnd_sith2 = GetObjectByTag("end_sith2", 0);
	object oEnd_sith3 = GetObjectByTag("end_sith3", 0);
	object oEnd_soldier1 = GetObjectByTag("end_soldier1", 0);
	object oEnd_soldier2 = GetObjectByTag("end_soldier2", 0);
	ActionPauseConversation();
	DelayCommand(0.1, AssignCommand(oEnd_sith2, CutsceneAttack(oEnd_soldier1, 239, 4, 0)));
	DelayCommand(0.2, AssignCommand(oEnd_sith3, CutsceneAttack(oEnd_soldier1, 239, 4, 0)));
}