struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oZuka = GetObjectByTag("zuka", 0);
	location location1 = Location(Vector((-25.833889), 47.17066, 25.81975), 0.049092);
	AssignCommand(oZuka, ActionJumpToLocation(location1));
}

