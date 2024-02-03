void main() {
	ActionPauseConversation();
	object oG0t0 = GetObjectByTag("g0t0", 0);
	object oHK47 = GetObjectByTag("HK47", 0);
	effect efBeam = EffectBeam(2027, oHK47, 4, 0);
	AssignCommand(oHK47, ClearAllActions());
	ApplyEffectToObject(1, efBeam, oG0t0, 4.0);
	AssignCommand(oHK47, ActionPlayAnimation(10538, 1.0, 4.0));
	DelayCommand(0.5, AssignCommand(oG0t0, ActionPlayAnimation(21, 1.0, 3.5)));
	DelayCommand(4.1, AssignCommand(oG0t0, ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(6.0, ActionResumeConversation());
}

