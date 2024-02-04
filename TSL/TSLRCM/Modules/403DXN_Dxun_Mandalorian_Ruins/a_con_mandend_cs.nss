void main() {
	object oG_mand_guide = GetObjectByTag("g_mandalore", 0);
	AssignCommand(oG_mand_guide, ClearAllActions());
	AssignCommand(oG_mand_guide, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	oG_mand_guide = GetObjectByTag("g_mand_guide", 0);
	DestroyObject(oG_mand_guide, 0.0, 0, 0.0, 0);
}