void main() {
	object oPC = GetFirstPC();
	object o221_grenn = GetObjectByTag("221_grenn", 0);
	AssignCommand(o221_grenn, ClearAllActions());
	AssignCommand(o221_grenn, ActionStartConversation(oPC, "carthend", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

