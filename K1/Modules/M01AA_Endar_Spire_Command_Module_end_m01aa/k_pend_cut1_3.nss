void main() {
	object oEnd_sith1 = GetObjectByTag("end_sith1", 0);
	object oEnd_sith2 = GetObjectByTag("end_sith2", 0);
	object oEnd_sith3 = GetObjectByTag("end_sith3", 0);
	object oEnd_soldier1 = GetObjectByTag("end_soldier1", 0);
	object oEnd_soldier2 = GetObjectByTag("end_soldier2", 0);
	ActionPauseConversation();
	DelayCommand(1.0, AssignCommand(oEnd_sith1, CutsceneAttack(oEnd_soldier1, 239, 1, 40)));
	AssignCommand(oEnd_sith2, CutsceneAttack(oEnd_soldier1, 239, 4, 0));
	AssignCommand(oEnd_soldier2, CutsceneAttack(oEnd_sith2, 239, 4, 0));
}