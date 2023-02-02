void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
		return;
	}
	if (((GetJournalEntry("deadline") == 41) && (!GetLocalBoolean(OBJECT_SELF, 40)))) {
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		object oTobin = GetObjectByTag("tobin", 0);
		AssignCommand(oTobin, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oTobin, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
