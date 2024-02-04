void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oKadron = GetObjectByTag("kiph", 0);
	SetLockHeadFollowInDialog(oKadron, 1);
	SetLockOrientationInDialog(oKadron, 1);
	oKadron = GetObjectByTag("vaklu_captain", 0);
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
		AssignCommand(oKadron, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		oKadron = GetObjectByTag("kadron", 0);
		AssignCommand(oKadron, ActionStartConversation(oEntering, "ro_sold2", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

