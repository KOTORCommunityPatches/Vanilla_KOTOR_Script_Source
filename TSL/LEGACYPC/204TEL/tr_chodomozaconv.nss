void main() {
	if ((!GetLocalBoolean(GetObjectByTag("tr_chodomoza", 0), 40))) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 0);
	object o203_moza = GetObjectByTag("203_moza", 0);
	SetLocalBoolean(o203_moza, 37, 1);
	AssignCommand(o203_moza, ClearAllActions());
	AssignCommand(o203_moza, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

