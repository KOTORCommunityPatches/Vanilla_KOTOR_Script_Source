void main() {
	object oNavigator = GetObjectByTag("Navigator", 0);
	object oWeaponsOfficer = GetObjectByTag("WeaponsOfficer", 0);
	SetLockOrientationInDialog(oNavigator, 1);
	AssignCommand(oNavigator, ActionPlayAnimation(40, 1.0, 200.0));
	SetLockOrientationInDialog(oWeaponsOfficer, 1);
	AssignCommand(oWeaponsOfficer, ActionPlayAnimation(40, 1.0, 200.0));
	DelayCommand(0.7, AssignCommand(GetObjectByTag("Officer", 0), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Officer", 1), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("Officer", 2), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Officer", 3), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.1, AssignCommand(GetObjectByTag("Officer", 4), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.8, AssignCommand(GetObjectByTag("Officer", 5), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.90000004, AssignCommand(GetObjectByTag("Officer", 6), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.6, AssignCommand(GetObjectByTag("Officer", 7), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.8, AssignCommand(GetObjectByTag("Officer", 8), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.90000004, AssignCommand(GetObjectByTag("Officer", 9), ActionPlayAnimation(40, 1.0, 200.0)));
	DelayCommand(0.6, AssignCommand(GetObjectByTag("Officer", 10), ActionPlayAnimation(40, 1.0, 200.0)));
	AssignCommand(GetObjectByTag("Officer2", 0), ActionPlayAnimation(36, 1.0, 200.0));
	AssignCommand(GetObjectByTag("Officer2", 1), ActionPlayAnimation(36, 1.0, 200.0));
	object oCarth = GetObjectByTag("Carth", 0);
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(oCarth, ClearAllActions());
	AssignCommand(oCarth, ActionStartConversation(GetFirstPC(), "carth", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
