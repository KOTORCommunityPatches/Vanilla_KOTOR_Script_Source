void main() {
	AurPostString("tr_atton_see_hk:", 5, 5, 5.0);
	object oNPC;
	object oAtton = GetObjectByTag("Atton", 0);
	if ((GetEnteringObject() == oAtton)) {
		AurPostString("it's atton", 5, 6, 5.0);
		if ((GetGlobalNumber("101PER_Sion_Arrives") == 1)) {
			AurPostString("sion's here", 5, 7, 5.0);
			if ((!GetLocalBoolean(OBJECT_SELF, 34))) {
				AurPostString("first time", 5, 8, 5.0);
				SetLocalBoolean(OBJECT_SELF, 34, 1);
				int int3 = 0;
				while ((int3 <= 2)) {
					AurPostString("act surprised!", 5, (9 + int3), 5.0);
					oNPC = GetPartyMemberByIndex(int3);
					AssignCommand(oNPC, ClearAllActions());
					AssignCommand(oNPC, ClearAllEffects());
					AssignCommand(oNPC, SetFacing(10.0));
					(int3++);
				}
			}
		}
	}
}