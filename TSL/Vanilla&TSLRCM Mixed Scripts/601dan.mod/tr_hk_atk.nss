void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oHK501 = GetObjectByTag("HK501", 0);
	if (GetIsObjectValid(oHK501)) {
		AssignCommand(oHK501, ActionStartConversation(oEntering, "601hk50", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
	}
}

