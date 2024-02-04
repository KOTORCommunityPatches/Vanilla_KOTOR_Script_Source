void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oPC = GetFirstPC();
	if (((GetEnteringObject() == oPC) && (IsNPCPartyMember(6) && (!GetLocalBoolean(GetObjectByTag("301RefEnc", 0), 30))))) {
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
		AssignCommand(oKreia, ActionStartConversation(oPC, "kreiare", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}