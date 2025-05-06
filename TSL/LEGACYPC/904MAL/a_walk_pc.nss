void main() {
	object oPC = GetFirstPC();
	effect effect1 = EffectMovementSpeedDecrease(25);
	ApplyEffectToObject(1, effect1, oPC, 14.0);
	AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_ATTON_WALKTO_1", 0)), 0, 30.0));
}

