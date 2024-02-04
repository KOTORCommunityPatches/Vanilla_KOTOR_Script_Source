void main() {
	int nParam1 = GetScriptParameter(1);
	object oHK50cut2 = GetObjectByTag("HK50cut2", 0);
	object oHK501 = GetObjectByTag("HK501", 0);
	object oHK502 = GetObjectByTag("HK502", 0);
	object oHK511 = GetObjectByTag("HK511", 0);
	object oHK512 = GetObjectByTag("HK512", 0);
	object oHK513 = GetObjectByTag("HK513", 0);
	object object13;
	int int3;
	switch (nParam1) {
		case 0:
			AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(oHK50cut2)));
			SetLockOrientationInDialog(GetFirstPC(), 1);
			SetLockOrientationInDialog(oHK50cut2, 1);
			break;
		case 1:
			AssignCommand(oHK50cut2, SetFacingPoint(GetPosition(oHK511)));
			AssignCommand(oHK501, SetFacingPoint(GetPosition(oHK511)));
			AssignCommand(oHK502, SetFacingPoint(GetPosition(oHK512)));
			break;
		case 2:
			AssignCommand(oHK50cut2, SetFacingPoint(GetPosition(GetFirstPC())));
			break;
		case 4:
			AssignCommand(oHK511, ActionPlayAnimation(9, 1.0, 0.0));
			AssignCommand(oHK512, ActionPlayAnimation(9, 1.0, 0.0));
			AssignCommand(oHK513, ActionPlayAnimation(9, 1.0, 0.0));
			break;
	}
}