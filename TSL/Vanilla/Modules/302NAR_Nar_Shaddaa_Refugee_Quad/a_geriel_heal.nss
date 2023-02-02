void main() {
	object oPC = GetFirstPC();
	object oGeriel = GetObjectByTag("geriel", 0);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("wp_geriel_heal", 0), 1, 1.0, 30.0));
	vector vPosition = GetPosition(oGeriel);
	AssignCommand(oPC, SetFacingPoint(vPosition));
	AssignCommand(oPC, ActionWait(1.0));
	AssignCommand(oGeriel, ActionPlayAnimation(35, 1.0, 5.0));
	AssignCommand(oPC, ActionPlayAnimation(29, 1.0, 4.0));
	AssignCommand(oPC, ActionPlayAnimation(0, 1.0, 1.0));
	AssignCommand(oGeriel, ActionPlayAnimation(0, 1.0, 1.0));
}
