void main() {
	int int1;
	int int2 = 25;
	int1 = 0;
	while ((int1 <= int2)) {
		{
			object oSerrocoThugCommon = GetObjectByTag("SerrocoThugCommon", int1);
			object oSerrocoThug1 = GetObjectByTag("SerrocoThug1", int1);
			if (GetIsObjectValid(oSerrocoThugCommon)) {
				AssignCommand(oSerrocoThugCommon, ClearAllActions());
				ChangeToStandardFaction(oSerrocoThugCommon, 1);
			}
			if (GetIsObjectValid(oSerrocoThug1)) {
				AssignCommand(oSerrocoThug1, ClearAllActions());
				ChangeToStandardFaction(oSerrocoThug1, 1);
			}
		}
		(int1++);
	}
	SetGlobalNumber("302NAR_Serroco", 2);
}

