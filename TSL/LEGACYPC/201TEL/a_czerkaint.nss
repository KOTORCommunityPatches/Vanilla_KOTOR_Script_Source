struct structtype1 {
	float float1;
	float float3;
};

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
		object o201_benok = GetObjectByTag("201_benok", 0);
		object oCzerkaguard02 = GetObjectByTag("czerkaguard02", 0);
		ActionPauseConversation();
		AssignCommand(o201_benok, ClearAllActions());
		AssignCommand(oCzerkaguard02, ClearAllActions());
		AssignCommand(o201_benok, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_czofficerintercept", 0)), 0));
		AssignCommand(oCzerkaguard02, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_czguard02intercept", 0)), 0));
		AssignCommand(o201_benok, ActionDoCommand(sub1(o201_benok, OBJECT_INVALID)));
		AssignCommand(oCzerkaguard02, ActionDoCommand(sub1(oCzerkaguard02, OBJECT_INVALID)));
		ActionResumeConversation();
	}
	else {
		if ((nParam1 == 2)) {
			object oUrban = GetObjectByTag("Urban", 0);
			AssignCommand(oUrban, ActionOpenDoor(oUrban));
			object object9 = GetObjectByTag("201_benok", 0);
			object object11 = GetObjectByTag("czerkaguard02", 0);
			ActionPauseConversation();
			AssignCommand(object9, ClearAllActions());
			AssignCommand(object11, ClearAllActions());
			AssignCommand(object9, ClearAllActions());
			AssignCommand(object11, ClearAllActions());
			AssignCommand(object9, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_czerkaexit", 0)), 0));
			AssignCommand(object11, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_czerkaexit", 0)), 0));
			DelayCommand(7.0, AssignCommand(oUrban, ActionCloseDoor(oUrban)));
			DelayCommand(9.5, DestroyObject(GetObjectByTag("201_benok", 0), 0.0, 0, 0.0, 0));
			DelayCommand(9.5, DestroyObject(GetObjectByTag("czerkaguard02", 0), 0.0, 0, 0.0, 0));
			DelayCommand(8.5, ActionResumeConversation());
		}
	}
}

