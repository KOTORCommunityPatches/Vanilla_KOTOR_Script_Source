struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ActionJumpToLocation(Location(Vector((-48.31663), (-87.24736), (-0.46812)), 1.7)));
}

