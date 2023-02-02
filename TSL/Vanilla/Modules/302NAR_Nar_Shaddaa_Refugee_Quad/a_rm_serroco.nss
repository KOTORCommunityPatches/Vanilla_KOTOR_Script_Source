void main() {
	int int1;
	int int2 = 25;
	int1 = 0;
	while ((int1 <= int2)) {
		{
			object oSerrocoThugCommon = GetObjectByTag("SerrocoThugCommon", int1);
			object oSerrocoThug1 = GetObjectByTag("SerrocoThug1", int1);
			object oSerrocoThugVeteran = GetObjectByTag("SerrocoThugVeteran", int1);
			if (GetIsObjectValid(oSerrocoThugCommon)) {
				AssignCommand(oSerrocoThugCommon, ClearAllActions());
				DestroyObject(oSerrocoThugCommon, 1.0, 1, 0.0, 0);
			}
			if (GetIsObjectValid(oSerrocoThug1)) {
				AssignCommand(oSerrocoThug1, ClearAllActions());
				DestroyObject(oSerrocoThug1, 1.0, 1, 0.0, 0);
			}
		}
		(int1++);
	}
	DestroyObject(GetObjectByTag("SerrocoLeader", 0), 0.0, 0, 0.0, 0);
	SetGlobalNumber("302NAR_Serroco", 2);
}
