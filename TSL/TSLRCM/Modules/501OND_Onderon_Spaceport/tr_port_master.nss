void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oPort_master = GetObjectByTag("port_master", 0);
	if ((!GetLocalBoolean(oPort_master, 40))) {
		AssignCommand(oPort_master, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(oPort_master, 40, 1);
	}
}