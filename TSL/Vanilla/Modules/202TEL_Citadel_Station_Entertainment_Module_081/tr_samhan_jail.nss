void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("200TEL_Sting") == 9)) {
		if (GetLocalBoolean(OBJECT_SELF, 36)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		SetGlobalNumber("200TEL_Sting", 10);
		object oSamhan = GetObjectByTag("Samhan", 0);
		if (GetIsObjectValid(oSamhan)) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			object oForceCageSamhan = GetObjectByTag("ForceCageSamhan", 0);
			DelayCommand(0.1, AssignCommand(oForceCageSamhan, ActionPlayAnimation(203, 1.0, 0.0)));
			CreateObject(64, "plc_forcecageblk", GetLocation(oForceCageSamhan), 0);
			SetLocalBoolean(oSamhan, 42, 1);
			object oWp_samhan_jail = GetObjectByTag("wp_samhan_jail", 0);
			AssignCommand(oSamhan, ClearAllActions());
			AssignCommand(oSamhan, ActionJumpToLocation(GetLocation(oWp_samhan_jail)));
			object oPC = GetFirstPC();
			AssignCommand(oPC, ClearAllActions());
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			DelayCommand(1.0, AssignCommand(oSamhan, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		else {
			AurPostString("ERROR: No Samhan to throw in jail!", 5, 15, 10.0);
		}
	}
}
