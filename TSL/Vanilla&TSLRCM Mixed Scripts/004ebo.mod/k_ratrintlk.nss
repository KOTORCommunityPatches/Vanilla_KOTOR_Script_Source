void main() {
	object oRatrin = GetObjectByTag("Ratrin", 0);
	AssignCommand(oRatrin, ClearAllActions());
	AssignCommand(oRatrin, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

