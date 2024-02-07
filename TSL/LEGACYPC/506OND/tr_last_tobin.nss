void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oTobin = GetObjectByTag("tobin", 0);
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetLocalBoolean(GetObjectByTag("tr_no_exit", 0), 30, 1);
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		object oDrexl_boss = GetObjectByTag("drexl_boss", 0);
		AssignCommand(oDrexl_boss, ActionDoCommand(SetFacing(270.0)));
		DelayCommand(1.0, ChangeToStandardFaction(oDrexl_boss, 1));
		DelayCommand(0.1, AssignCommand(oDrexl_boss, ActionMoveToObject(GetWaypointByTag("wp_entry_tgone"), 0, 1.0)));
		AssignCommand(oDrexl_boss, ActionUseTalentOnObject(TalentSpell(257), oDrexl_boss));
		SetNPCAIStyle(oDrexl_boss, 7);
	}
	else {
		AssignCommand(oTobin, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

