void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		object oBaoDur2 = GetObjectByTag("BaoDur2", 0);
		if ((!GetIsObjectValid(oBaoDur2))) {
			return;
		}
		SetPartyLeader(0xFFFFFFFF);
		object oPC = GetFirstPC();
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oBaoDur2, ClearAllActions());
		AssignCommand(oBaoDur2, ActionStartConversation(oPC, "261exit", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}