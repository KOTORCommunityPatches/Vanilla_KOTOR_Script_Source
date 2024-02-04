void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		return;
	}
	if (GetLocalBoolean(GetWaypointByTag("wp_barrier_entry"), 40)) {
		return;
	}
	SetLocalBoolean(GetWaypointByTag("wp_barrier_entry"), 40, 1);
	DelayCommand(0.1, AssignCommand(GetObjectByTag("tobin", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}