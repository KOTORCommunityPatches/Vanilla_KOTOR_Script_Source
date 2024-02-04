void main() {
	int nParam1 = GetScriptParameter(1);
	object o202_Falt = GetObjectByTag("202_Falt", 0);
	if ((nParam1 == 1)) {
		ActionPauseConversation();
		AssignCommand(o202_Falt, ActionMoveToObject(GetObjectByTag("wp_falt_door", 0), 0, 1.0));
		AssignCommand(o202_Falt, ActionPlayAnimation(115, 1.0, 0.0));
		object oApartment_Falt = GetObjectByTag("Apartment_Falt", 0);
		DelayCommand(3.0, AssignCommand(oApartment_Falt, ActionUnlockObject(oApartment_Falt)));
		DelayCommand(3.1, AssignCommand(oApartment_Falt, ActionOpenDoor(oApartment_Falt)));
		DelayCommand(4.0, AssignCommand(o202_Falt, ActionMoveToObject(GetObjectByTag("wp_falt_apartment", 0), 0, 1.0)));
		DelayCommand(4.5, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_inside_falt", 0), 0, 1.0)));
		DelayCommand(5.0, ActionResumeConversation());
	}
	if ((nParam1 == 2)) {
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_near_falt", 0), 0, 1.0));
	}
	if ((nParam1 == 3)) {
		object object12 = GetObjectByTag("Apartment_Falt", 0);
		AssignCommand(object12, ActionCloseDoor(object12));
		DelayCommand(0.5, AssignCommand(object12, ActionLockObject(object12)));
	}
	if ((nParam1 == 4)) {
		CreateObject(1, "g_csd001", GetLocation(GetObjectByTag("wp_czerkasec1", 0)), 0);
		CreateObject(1, "g_csd002", GetLocation(GetObjectByTag("wp_czerkasec2", 0)), 0);
		object oComplexA = GetObjectByTag("ComplexA", 0);
		if ((!GetIsOpen(oComplexA))) {
			AssignCommand(oComplexA, ActionOpenDoor(oComplexA));
		}
	}
	if ((nParam1 == 5)) {
		AssignCommand(GetObjectByTag("g_csd001", 0), ActionMoveToObject(GetObjectByTag("wp_czerkasec1_2", 0), 0, 1.0));
		AssignCommand(GetObjectByTag("g_csd002", 0), ActionMoveToObject(GetObjectByTag("wp_czerkasec2_2", 0), 0, 1.0));
	}
	if ((nParam1 == 6)) {
		AssignCommand(GetObjectByTag("g_csd001", 0), ActionJumpToObject(GetObjectByTag("wp_czerkasec1_3", 0), 1));
		AssignCommand(GetObjectByTag("g_csd002", 0), ActionJumpToObject(GetObjectByTag("wp_czerkasec2_3", 0), 1));
	}
	if ((nParam1 == 7)) {
		object object28 = GetObjectByTag("Apartment_Falt", 0);
		AssignCommand(object28, ActionUnlockObject(object28));
		DelayCommand(0.1, AssignCommand(object28, ActionOpenDoor(object28)));
		ChangeToStandardFaction(GetObjectByTag("202_Falt", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("g_csd001", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("g_csd002", 0), 1);
	}
}