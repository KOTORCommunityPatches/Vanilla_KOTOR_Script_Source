void main() {
	object oVisasCut = GetObjectByTag("VisasCut", 0);
	object oWp_visas_001 = GetObjectByTag("wp_visas_001", 0);
	AssignCommand(oVisasCut, ActionJumpToObject(oWp_visas_001, 1));
	object oPC = GetFirstPC();
	object oWp_visaspc_002 = GetObjectByTag("wp_visaspc_002", 0);
	AssignCommand(oPC, ActionJumpToObject(oWp_visaspc_002, 1));
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
}

