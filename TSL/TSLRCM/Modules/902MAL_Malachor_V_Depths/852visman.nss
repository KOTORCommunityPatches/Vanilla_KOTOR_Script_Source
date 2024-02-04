// Prototypes
void sub2();
void sub1();

void sub2() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("Mand", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("Mand", 0), ActionJumpToObject(GetWaypointByTag("sp_mira"), 1));
	DelayCommand(0.7, ChangeObjectAppearance(GetObjectByTag("Mand", 0), 639));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("VisasMarr", 0), ActionMoveToObject(GetObjectByTag("InvisFlank", 0), 0, 1.0)));
	object oWP_ASSASSIN_FLANK = GetObjectByTag("WP_ASSASSIN_FLANK", 0);
	DelayCommand(4.9, AssignCommand(GetObjectByTag("VisasMarr", 0), ClearAllActions()));
	DelayCommand(5.0, AssignCommand(GetObjectByTag("VisasMarr", 0), ActionJumpToObject(oWP_ASSASSIN_FLANK, 1)));
	DelayCommand(5.0, SetDialogPlaceableCamera(7));
	DelayCommand(5.1, AssignCommand(GetObjectByTag("VisasMarr", 0), ActionMoveToObject(GetObjectByTag("InvisFlank", 0), 0, 1.0)));
	DelayCommand(8.0, SetDialogPlaceableCamera(9));
	DelayCommand(12.0, SetDialogPlaceableCamera(10));
	DelayCommand(14.0, ActionResumeConversation());
}

void sub1() {
	ActionPauseConversation();
	DelayCommand(2.0, AssignCommand(GetObjectByTag("Mand", 0), ActionMoveToLocation(Location(Vector((-55.09752), (-91.22767), 9.01341), 0.0), 0)));
	DelayCommand(4.0, ActionResumeConversation());
}

void main() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oMand = GetObjectByTag("Mand", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			AssignCommand(oVisasMarr, ActionMoveToLocation(Location(Vector(1.28777, (-64.74307), 9.01341), 0.0), 0));
			AssignCommand(oMand, ActionMoveToLocation(Location(Vector(6.34599, (-63.97657), 9.01341), 0.0), 0));
			DelayCommand(8.0, ActionResumeConversation());
			break;
		case 1:
			SetLockOrientationInDialog(oVisasMarr, 1);
			SetLockOrientationInDialog(oMand, 1);
			break;
		case 2:
			ActionPauseConversation();
			DelayCommand(7.0, ActionResumeConversation());
			break;
		case 3:
			SetLockOrientationInDialog(oVisasMarr, 0);
			break;
		case 4:
			ActionPauseConversation();
			DelayCommand(3.0, ActionResumeConversation());
			break;
		case 5:
			sub1();
			break;
		case 6:
			sub2();
			break;
		case 7:
			ActionPauseConversation();
			AssignCommand(oMand, ActionMoveToObject(GetWaypointByTag("wp_mira"), 0, 1.0));
			DelayCommand(1.7, ActionResumeConversation());
			break;
		case 8:
			SetLockOrientationInDialog(oMand, 0);
			break;
		case 9:
			ActionPauseConversation();
			AssignCommand(oMand, ClearAllActions());
			AssignCommand(GetObjectByTag("Mand", 0), ActionJumpToObject(GetWaypointByTag("sp_mira"), 1));
			DelayCommand(0.1, AssignCommand(oMand, ActionMoveToObject(GetWaypointByTag("wp_mira"), 0, 1.0)));
			DelayCommand(2.0, ActionResumeConversation());
			break;
	}
}