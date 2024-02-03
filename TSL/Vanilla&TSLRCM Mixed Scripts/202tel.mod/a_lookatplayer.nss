struct structtype1 {
	float float1;
	float float3;
};

void main() {
	AssignCommand(OBJECT_SELF, SetFacingPoint(GetPosition(GetFirstPC())));
	SetLockOrientationInDialog(OBJECT_SELF, 1);
}

