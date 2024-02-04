void main() {
	object oPC = GetFirstPC();
	if ((oPC == GetEnteringObject())) {
		if ((!GetLocalBoolean(OBJECT_SELF, 34))) {
			SetLocalBoolean(OBJECT_SELF, 34, 1);
			AssignCommand(oPC, ClearAllEffects());
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(GetObjectByTag("711_1st_door", 0), ActionStartConversation(oPC, "entrance_cs", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}