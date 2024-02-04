void main() {
	DestroyObject(GetObjectByTag("Handmaiden", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("VisasMarr", 0), 0.0, 0, 0.0, 0);
	object oPC = GetFirstPC();
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(oPC, ClearAllActions());
	object object5 = SpawnAvailableNPC(8, GetLocation(oPC));
	AssignCommand(object5, ActionStartConversation(oPC, "904t3m4", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}