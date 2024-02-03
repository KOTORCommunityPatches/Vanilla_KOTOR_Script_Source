struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oHK50CS = GetObjectByTag("HK50CS", 0);
	object oHK502CS = GetObjectByTag("HK502CS", 0);
	object oHK503CS = GetObjectByTag("HK503CS", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			DelayCommand(0.5, AssignCommand(oHK50CS, SetFacingPoint(GetPosition(GetObjectByTag("HK502CS", 0)))));
			DelayCommand(0.75, AssignCommand(oHK503CS, SetFacingPoint(GetPosition(GetObjectByTag("HK502CS", 0)))));
			DelayCommand(1.0, AssignCommand(oHK502CS, SetFacingPoint(GetPosition(GetObjectByTag("HK50CS", 0)))));
			DelayCommand(3.0, ActionResumeConversation());
			break;
		case 1:
			SetLockOrientationInDialog(oHK50CS, 1);
			SetLockOrientationInDialog(oHK502CS, 1);
			SetLockOrientationInDialog(oHK503CS, 1);
			break;
		case 2:
			SetLockOrientationInDialog(oHK50CS, 0);
			SetLockOrientationInDialog(oHK502CS, 0);
			SetLockOrientationInDialog(oHK503CS, 0);
			break;
		case 3:
			AssignCommand(oHK50CS, SetFacingPoint(GetPosition(GetObjectByTag("HK47", 0))));
			AssignCommand(oHK502CS, SetFacingPoint(GetPosition(GetObjectByTag("HK47", 0))));
			AssignCommand(oHK503CS, SetFacingPoint(GetPosition(GetObjectByTag("HK47", 0))));
			AssignCommand(GetObjectByTag("HK47", 0), SetFacingPoint(GetPosition(oHK50CS)));
			break;
	}
}

