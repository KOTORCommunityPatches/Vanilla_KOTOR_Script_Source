void main() {
	object oPC = GetEnteringObject();
	if ((((GetFirstPC() == oPC) || (GetNextPC() == oPC)) || (GetNextPC() == oPC))) {
		if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
			return;
		}
		if (GetLocalBoolean(OBJECT_SELF, 50)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 50, 1);
		oPC = GetFirstPC();
		object object7 = GetNextPC();
		AssignCommand(object7, ClearAllActions());
		AssignCommand(object7, ActionJumpToObject(GetObjectByTag("wp_npc1_move1", 0), 1));
		object7 = GetNextPC();
		AssignCommand(object7, ClearAllActions());
		AssignCommand(object7, ActionJumpToObject(GetObjectByTag("wp_npc2_move1", 0), 1));
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(GetObjectByTag("DarthSion", 0), ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		DelayCommand(0.2, AssignCommand(oPC, ClearAllActions()));
		DelayCommand(0.2, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_pc_move1", 0), 1)));
	}
}

