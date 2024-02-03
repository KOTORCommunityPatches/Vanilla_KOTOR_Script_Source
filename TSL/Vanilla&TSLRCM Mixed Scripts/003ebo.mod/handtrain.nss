void main() {
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oMaidInvis = GetObjectByTag("MaidInvis", 0);
	AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0));
	DelayCommand(1.0, AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 478, 4, 0))));
	DelayCommand(2.6, AssignCommand(oHandmaiden, ClearAllActions()));
	DelayCommand(2.6, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
	DelayCommand(5.5, AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 481, 4, 0))));
	DelayCommand(6.6, AssignCommand(oHandmaiden, ClearAllActions()));
	DelayCommand(6.6, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
	DelayCommand(8.7, AssignCommand(oHandmaiden, ActionDoCommand(CutsceneAttack(oMaidInvis, 477, 4, 0))));
	DelayCommand(10.2, AssignCommand(oHandmaiden, ClearAllActions()));
	DelayCommand(10.2, AssignCommand(oHandmaiden, ActionPlayAnimation(10535, 1.0, 0.0)));
}

