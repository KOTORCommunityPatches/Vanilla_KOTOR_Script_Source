struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	SetLockOrientationInDialog(oKreiaEvil, 0);
	AssignCommand(oKreiaEvil, SetFacingPoint(GetPosition(GetObjectByTag("Disciple", 0))));
}

