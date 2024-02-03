struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("HK47", 0))));
	DestroyObject(GetObjectByTag("DrdParts", 0), 0.0, 0, 0.0, 0);
}

