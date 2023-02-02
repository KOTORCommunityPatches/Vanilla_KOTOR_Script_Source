void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 31, 1);
	object oTran_Jekk = GetObjectByTag("Tran_Jekk", 0);
	SetLocalBoolean(oTran_Jekk, 31, 1);
	AssignCommand(oTran_Jekk, ClearAllActions());
	AssignCommand(oTran_Jekk, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
