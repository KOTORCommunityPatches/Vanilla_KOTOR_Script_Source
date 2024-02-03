void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	ActionPauseConversation();
	DelayCommand(0.9, AssignCommand(oKreia, ClearAllActions()));
	DelayCommand(0.9, AssignCommand(oKreia, ActionPlayAnimation(10088, 1.0, 0.0)));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("BaoDur", 0), ClearAllActions()));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("BaoDur", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("Handmaiden", 0), ClearAllActions()));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("Handmaiden", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("Disciple", 0), ClearAllActions()));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("Disciple", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("VisasMarr", 0), ClearAllActions()));
	DelayCommand(1.3, AssignCommand(GetObjectByTag("VisasMarr", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(2.5, ActionResumeConversation());
}

