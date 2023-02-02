void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oPlateau = GetObjectByTag("Plateau", 0);
	if ((!GetIsObjectValid(oPlateau))) {
		return;
	}
	object oKreia = GetObjectByTag("Kreia", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(oBaoDur, ClearAllActions());
	AssignCommand(oPlateau, ClearAllActions());
	AssignCommand(oPlateau, ActionStartConversation(GetFirstPC(), "Plateau", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
