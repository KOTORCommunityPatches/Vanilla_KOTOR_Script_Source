struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ActionJumpToLocation(Location(Vector((-0.03509), (-27.36171), 0.4746), 270.0)));
	effect effect1 = EffectMovementSpeedDecrease(25);
	ApplyEffectToObject(1, effect1, oPC, 14.0);
	DelayCommand(0.1, AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_ATTON_WALKTO_1", 0)), 0, 30.0)));
}

