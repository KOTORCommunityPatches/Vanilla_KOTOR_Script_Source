void main() {
	object oWallt_med = GetObjectByTag("wallt_ring", 0);
	SoundObjectStop(oWallt_med);
	oWallt_med = GetObjectByTag("wallt_med", 0);
	AssignCommand(oWallt_med, ClearAllActions());
	AssignCommand(oWallt_med, ActionStartConversation(GetFirstPC(), "geno", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}