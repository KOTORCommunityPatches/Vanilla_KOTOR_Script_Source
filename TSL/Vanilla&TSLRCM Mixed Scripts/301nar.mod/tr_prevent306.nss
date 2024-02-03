void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (("atton" == GetTag(oEntering))) {
			if (((GetGlobalNumber("300NAR_Bounty_Attack") == 1) || (GetGlobalNumber("300NAR_Bounty_Attack") == 2))) {
				object oWP_atton_306 = GetObjectByTag("WP_atton_306", 0);
				object oAtton = GetObjectByTag("Atton", 0);
				AssignCommand(oAtton, ClearAllActions());
				AssignCommand(oAtton, ActionJumpToObject(oWP_atton_306, 1));
				DelayCommand(0.2, AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "attstop", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}

