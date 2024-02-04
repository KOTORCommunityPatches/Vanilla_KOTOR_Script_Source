void main() {
	int nParam1 = GetScriptParameter(1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	switch (nParam1) {
		case 0:
			DelayCommand(1.0, AssignCommand(oVisasMarr, ActionForceMoveToObject(GetObjectByTag("wp_visas_cell_door", 0), 0, 1.0, 30.0)));
			DelayCommand(1.0, AssignCommand(oVisasMarr, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_visas_cell_door", 0))))));
			break;
		case 1:
			ActionPauseConversation();
			{
				int int3 = 0;
				int3 = 0;
				while ((int3 < 3)) {
				{
					object oVisasDoor = GetObjectByTag("VisasDoor", int3);
					AssignCommand(oVisasDoor, ActionOpenDoor(oVisasDoor));
				}
					(int3++);
				}
				DelayCommand(1.0, AssignCommand(oVisasMarr, ActionMoveToObject(GetObjectByTag("wp_visas_cell_door2", 0), 0, 1.0)));
				DelayCommand(3.0, SetGlobalFadeOut(0.1, 1.0, 0.0, 0.0, 0.0));
				SetLocalBoolean(GetObjectByTag("tr_visas_med2", 0), 55, 1);
				DelayCommand(4.1, ActionResumeConversation());
			}
			break;
		case 2:
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oVisasMarr, ActionJumpToObject(GetObjectByTag("sp_visas_meditation", 0), 1));
			AssignCommand(GetObjectByTag("Visas", 0), ActionStartConversation(GetFirstPC(), "851medit", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
	}
}