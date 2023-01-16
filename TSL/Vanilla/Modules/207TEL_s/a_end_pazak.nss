void main() {
	object oDoton = GetObjectByTag("doton", 0);
	if (GetIsObjectValid(oDoton)) {
		int int2 = GetLastPazaakResult();
		if ((int2 == 0)) {
			SetLocalBoolean(oDoton, 29, 1);
			AurPostString("TAKING 1000 CREDITS", 15, 15, 10.0);
			AssignCommand(oDoton, TakeGoldFromCreature(1000, GetFirstPC(), 0));
		}
		else {
			if ((int2 == 1)) {
				SetGlobalNumber("203TEL_Ramana", 1);
			}
			else {
				AurPostString("ERROR: should not get here 207TEL", 5, 15, 10.0);
			}
		}
		AssignCommand(oDoton, ActionStartConversation(GetFirstPC(), "dotonhet", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

