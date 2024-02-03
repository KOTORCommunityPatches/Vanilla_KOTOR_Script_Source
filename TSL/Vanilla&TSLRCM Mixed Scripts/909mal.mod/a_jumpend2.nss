struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object oAtton = GetObjectByTag("Atton", 0);
	object o909sion = GetObjectByTag("909sion", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("sp_sion", 0)));
	AssignCommand(oAtton, ActionJumpToLocation(Location(Vector((-3.02719), 66.10995, 3.0), 0.0)));
	AssignCommand(o909sion, ActionJumpToLocation(Location(Vector((-5.01533), 67.97513, 3.0), 180.0)));
	SetGlobalFadeIn(0.3, 1.5, 0.0, 0.0, 0.0);
}

