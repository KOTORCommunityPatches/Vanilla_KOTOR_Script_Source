struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oMira = GetObjectByTag("Mira", 0);
	object oHanharr = GetObjectByTag("Hanharr", 0);
	DelayCommand(1.0, AssignCommand(oMira, SetFacingPoint(GetPosition(oHanharr))));
}

