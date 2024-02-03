struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DestroyObject(GetObjectByTag("naked_fakpc", 0), 0.0, 0, 0.0, 0);
	AssignCommand(GetObjectByTag("BaoDur", 0), ActionJumpToLocation(Location(Vector(64.13808, 25.90077, 1.8), 303.63025)));
	AssignCommand(GetFirstPC(), ActionJumpToLocation(Location(Vector(63.85465, 28.03239, 1.8), 303.63025)));
}

