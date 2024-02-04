void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	object oG0T0 = GetObjectByTag("G0T0", 0);
	if ((GetIsObjectValid(oG0T0) && IsNPCPartyMember(3))) {
		RemovePartyMember(3);
		AssignCommand(oG0T0, ActionStartConversation(oEntering, "303g0t0", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if (GetIsObjectValid(oG0T0)) {
			AddPartyMember(3, oG0T0);
		}
	}
}