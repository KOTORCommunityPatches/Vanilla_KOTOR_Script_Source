void main() {
	object oVisasCut = GetObjectByTag("VisasCut", 0);
	object oWp_visas_001 = GetObjectByTag("wp_visas_001", 0);
	AssignCommand(oVisasCut, ActionJumpToObject(oWp_visas_001, 1));
	object oPC = GetFirstPC();
	object oWp_visaspc_002 = GetObjectByTag("wp_visaspc_002", 0);
	AssignCommand(oPC, ActionJumpToObject(oWp_visaspc_002, 1));
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), 2);
	AssignCommand(GetObjectByTag("Atton", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("Atton", 0), ClearAllEffects());
	AssignCommand(GetObjectByTag("Atton", 0), ActionPlayAnimation(10086, 1.0, 0.0));
	ChangeToStandardFaction(GetObjectByTag("Atton", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("Mand", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("g0t0", 0), 2);
	AssignCommand(GetObjectByTag("Handmaiden", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("Handmaiden", 0), ClearAllEffects());
	AssignCommand(GetObjectByTag("Handmaiden", 0), ActionPlayAnimation(10086, 1.0, 0.0));
	ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("hk47", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("Kreia", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("T3m4", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("Hanharr", 0), 2);
	AssignCommand(GetObjectByTag("Disciple", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("Disciple", 0), ClearAllEffects());
	AssignCommand(GetObjectByTag("Disciple", 0), ActionPlayAnimation(10086, 1.0, 0.0));
	ChangeToStandardFaction(GetObjectByTag("Disciple", 0), 2);
}

