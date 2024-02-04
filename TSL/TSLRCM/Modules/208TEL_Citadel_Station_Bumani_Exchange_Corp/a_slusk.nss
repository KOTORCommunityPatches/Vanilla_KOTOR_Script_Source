// Prototypes
void sub1(object objectParam1, object oPC);

void sub1(object objectParam1, object oPC) {
	if ((oPC == OBJECT_INVALID)) {
		oPC = GetFirstPC();
	}
	AssignCommand(objectParam1, SetFacingPoint(GetPositionFromLocation(GetLocation(oPC))));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("203_Slusk", 0), ActionForceMoveToObject(GetObjectByTag("WP_SLUSK3", 0), 0, 1.0, 30.0));
		DelayCommand(1.0, sub1(GetObjectByTag("ExThugL1", 0), OBJECT_INVALID));
		DelayCommand(1.5, AssignCommand(GetObjectByTag("door_203exes", 0), ActionCloseDoor(GetObjectByTag("door_203exes", 0))));
		SetLocked(GetObjectByTag("door_203exes", 0), 1);
		DelayCommand(3.0, AssignCommand(GetObjectByTag("203_Slusk", 0), ActionJumpToObject(GetObjectByTag("WP_SLUSK1", 0), 1)));
		ChangeToStandardFaction(GetObjectByTag("ExThugL1", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("ExThugL2", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("ExThug1", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("ExThug2", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("ExThug3", 0), 1);
	}
	else {
		if ((nParam1 == 2)) {
			SetGlobalNumber("203TEL_Habat", 7);
			ApplyEffectToObject(0, EffectDeath(0, 1, 0), GetObjectByTag("203_Slusk", 0), 0.0);
		}
		else {
			if ((nParam1 == 3)) {
				sub1(GetObjectByTag("ExThugL1", 0), OBJECT_INVALID);
				sub1(GetObjectByTag("ExThugL2", 0), OBJECT_INVALID);
				sub1(GetObjectByTag("ExThug1", 0), OBJECT_INVALID);
				sub1(GetObjectByTag("ExThug2", 0), OBJECT_INVALID);
				sub1(GetObjectByTag("ExThug3", 0), OBJECT_INVALID);
			}
		}
	}
}