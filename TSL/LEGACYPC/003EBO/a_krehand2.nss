struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oKreiaInvis = GetObjectByTag("KreiaInvis", 0);
	AssignCommand(oKreia, SetFacingPoint(GetPosition(oKreiaInvis)));
}

