void main() {
	object oNpc_pato = GetObjectByTag("npc_pato", 0);
	int int1 = GetLastPazaakResult();
	int nLocal = GetLocalNumber(oNpc_pato, 13);
	int int5 = GetLocalNumber(oNpc_pato, 14);
	string string1 = IntToString(nLocal);
	AurPostString(("Record prior to math: " + string1), 5, 3, 5.0);
	string1 = IntToString(int5);
	AurPostString(("Bet: " + string1), 5, 4, 5.0);
	if (int1) {
		nLocal = (nLocal + int5);
		string1 = IntToString(nLocal);
		AurPostString(("Player won. Record updated: " + string1), 5, 5, 5.0);
		SetLocalNumber(oNpc_pato, 13, nLocal);
	}
	string string5 = IntToString(nLocal);
	AurPostString((("The player has won a total of " + string5) + "*250 credits from Pato."), 5, 6, 5.0);
	AssignCommand(oNpc_pato, ClearAllActions());
	AssignCommand(oNpc_pato, ActionStartConversation(GetFirstPC(), "pato", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

