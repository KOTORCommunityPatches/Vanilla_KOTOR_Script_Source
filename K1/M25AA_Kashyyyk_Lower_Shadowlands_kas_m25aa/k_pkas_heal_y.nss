int StartingConditional() {
	
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oMedpac = GetItemPossessedBy(oPC, "g_i_medeqpmnt01");
	object oAdvMedpac = GetItemPossessedBy(oPC, "g_i_medeqpmnt02");
	object oLifeSupport = GetItemPossessedBy(oPC, "g_i_medeqpmnt03");
	object oAntidote = GetItemPossessedBy(oPC, "g_i_medeqpmnt04");
	
	if (GetIsObjectValid(oMedpac) || GetIsObjectValid(oAdvMedpac) || GetIsObjectValid(oLifeSupport) || GetIsObjectValid(oAntidote)
	|| GetHasSpell(FORCE_POWER_HEAL, oPC) || GetHasSpell(FORCE_POWER_CURE, oPC)
	|| GetHasSpell(FORCE_POWER_HEAL, oPM1) || GetHasSpell(FORCE_POWER_CURE, oPM1)
	|| GetHasSpell(FORCE_POWER_HEAL, oPM2) || GetHasSpell(FORCE_POWER_CURE, oPM2))
		{
			return TRUE;
		}
	
	return FALSE;
}
