void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oHK50cut2 = GetObjectByTag("HK50cut2", 0);
	if (GetIsObjectValid(oHK50cut2)) {
		AssignCommand(oHK50cut2, ActionStartConversation(oEntering, "hk50cut", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
	}
}