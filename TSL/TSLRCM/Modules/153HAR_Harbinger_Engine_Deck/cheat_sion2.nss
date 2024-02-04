void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		AurPostString("cheat_sion2: OH NO THIS TRIGGER IS TEMP!", 5, 5, 5.0);
		object oDarthsion = GetObjectByTag("darthsion", 0);
		object oAtton = GetObjectByTag("Atton", 0);
		AssignCommand(oAtton, ClearAllActions());
		AssignCommand(oAtton, ActionStartConversation(oPC, "153atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}