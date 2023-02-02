void main() {
	if ((GetGlobalNumber("000_Jedi_Found") < 4)) {
		return;
	}
	if (GetIsPartyLeader(GetEnteringObject())) {
		if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
			SetLocalBoolean(OBJECT_SELF, 55, 1);
			object oMedChamber = GetObjectByTag("MedChamber", 0);
			AssignCommand(oMedChamber, ActionCloseDoor(oMedChamber));
			SetLocked(oMedChamber, 1);
			object oAtris = GetObjectByTag("Atris", 0);
			DelayCommand(0.5, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_pc_atris_end", 0), 0, 1.0)));
			AssignCommand(oAtris, ClearAllActions());
			AssignCommand(oAtris, ActionStartConversation(GetPCSpeaker(), "atrend3", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			CreateObject(64, "invisible001", GetLocation(GetWaypointByTag("sp_traya")), 0);
		}
	}
}
