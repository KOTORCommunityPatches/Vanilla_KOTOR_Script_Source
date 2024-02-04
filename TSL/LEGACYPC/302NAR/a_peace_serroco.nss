void main() {
	int int1;
	int int2 = 25;
	int1 = 0;
	while ((int1 <= int2)) {
		{
			object oSerrocoThugCommon = GetObjectByTag("SerrocoThugCommon", int1);
			object oSerrocoThug1 = GetObjectByTag("SerrocoThug1", int1);
			if (GetIsObjectValid(oSerrocoThugCommon)) {
				ChangeToStandardFaction(oSerrocoThugCommon, 5);
			}
			if (GetIsObjectValid(oSerrocoThug1)) {
				ChangeToStandardFaction(oSerrocoThug1, 5);
			}
		}
		(int1++);
	}
	SetGlobalNumber("302NAR_Serroco", 2);
}

