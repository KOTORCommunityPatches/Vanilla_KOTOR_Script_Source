void main() {
	object oHidden_turret = GetObjectByTag("hidden_turret", 0);
	object object3 = GetObjectByTag("hidden_turret", 1);
	AssignCommand(oHidden_turret, ClearAllActions());
	AssignCommand(object3, ClearAllActions());
	AssignCommand(oHidden_turret, ActionPlayAnimation(10334, 1.0, 0.0));
	AssignCommand(oHidden_turret, ActionPlayAnimation(10278, 1.0, 0.0));
	AssignCommand(object3, ActionPlayAnimation(10334, 1.0, 0.0));
	AssignCommand(object3, ActionPlayAnimation(10278, 1.0, 0.0));
}
