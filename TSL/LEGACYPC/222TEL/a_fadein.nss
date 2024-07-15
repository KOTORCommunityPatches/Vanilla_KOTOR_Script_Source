void main() {
	object oNavigator = GetObjectByTag("Navigator", 0);
	if (GetIsObjectValid(oNavigator)) {
		AssignCommand(oNavigator, ClearAllActions());
		SetLockHeadFollowInDialog(oNavigator, 1);
		SetLockOrientationInDialog(oNavigator, 1);
	}
	else {
		AurPostString("Navigator not valid", 5, 19, 10.0);
	}
	object oWeaponsOfficer = GetObjectByTag("WeaponsOfficer", 0);
	if (GetIsObjectValid(oWeaponsOfficer)) {
		AssignCommand(oWeaponsOfficer, ClearAllActions());
		SetLockHeadFollowInDialog(oWeaponsOfficer, 1);
		SetLockOrientationInDialog(oWeaponsOfficer, 1);
	}
	else {
		AurPostString("Weapon Officer not valid", 5, 20, 10.0);
	}
	SetGlobalFadeIn(0.5, 3.0, 0.0, 0.0, 0.0);
}

