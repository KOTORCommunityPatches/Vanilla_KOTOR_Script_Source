struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object oAtton = GetObjectByTag("Atton", 0);
	object o909sion = GetObjectByTag("909sion", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("sp_sion", 0)));
	AssignCommand(oAtton, ActionJumpToLocation(Location(Vector((-0.27188), 65.46544, 3.0), 0.0)));
	AssignCommand(o909sion, ActionJumpToLocation(Location(Vector(0.0636, 64.03072, 3.0), 180.0)));
	AssignCommand(o909sion, SetLockOrientationInDialog(o909sion, 1));
	SetGlobalFadeIn(0.3, 1.5, 0.0, 0.0, 0.0);
}

