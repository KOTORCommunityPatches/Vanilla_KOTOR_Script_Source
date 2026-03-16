struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetObjectByTag("Atton", 0), SetFacingPoint(GetPosition(GetObjectByTag("PCDoor", 0))));
	AssignCommand(GetObjectByTag("Kreia", 0), SetFacingPoint(GetPosition(GetObjectByTag("PCDoor", 0))));
	AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("PCDoor", 0))));
}

