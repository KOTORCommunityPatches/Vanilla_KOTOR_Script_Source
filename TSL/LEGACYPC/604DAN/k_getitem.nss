void main() {
	object oPC = GetFirstPC();
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "p_kinrath_gland"))) {
		AurPostString("k_getitem: Sweat gland recovered", 9, 9, 5.0);
		SetGlobalBoolean("604DAN_Has_SweatGland", 1);
	}
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "pl_mercorders"))) {
		if ((GetJournalEntry("khoondad") == 0)) {
			AddJournalQuestEntry("khoondad", 10, 0);
		}
	}
	if ((GetIsObjectValid(GetItemPossessedBy(oPC, "g_i_asensors")) && (GetJournalEntry("ssensor") < 20))) {
		AddJournalQuestEntry("ssensor", 20, 0);
		object oBaodur = GetObjectByTag("Baodur", 0);
		if (((IsNPCPartyMember(1) == 1) && (GetDistanceBetween(GetPartyLeader(), oBaodur) <= 10.0))) {
			AssignCommand(oBaodur, ClearAllActions());
		}
		AssignCommand(oBaodur, ActionStartConversation(GetFirstPC(), "bao_sens", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

