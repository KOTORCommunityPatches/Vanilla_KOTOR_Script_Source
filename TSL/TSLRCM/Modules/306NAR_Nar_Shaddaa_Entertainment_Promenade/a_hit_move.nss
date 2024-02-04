void main() {
	object oPC = GetFirstPC();
	object oHitman = GetObjectByTag("Hitman", 0);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("WP_hitman_spot", 0), 0, 1.0, 30.0));
	AssignCommand(oPC, DelayCommand(0.8, SetFacingPoint(GetPosition(oHitman))));
}