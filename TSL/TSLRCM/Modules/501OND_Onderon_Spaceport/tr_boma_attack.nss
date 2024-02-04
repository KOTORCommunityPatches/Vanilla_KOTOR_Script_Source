void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	object oBeast_rider = GetObjectByTag("beast_rider", 0);
	if ((!GetLocalBoolean(oBeast_rider, 10))) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	SetLocalBoolean(oBeast_rider, 51, 1);
	AssignCommand(oBeast_rider, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}