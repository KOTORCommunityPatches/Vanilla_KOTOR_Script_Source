void main() {
	object oHanharr = GetObjectByTag("Hanharr", 0);
	AssignCommand(oHanharr, ActionJumpToObject(GetObjectByTag("WP_HAN_END2_0", 0), 0));
	DelayCommand(0.5, ActionStartConversation(oHanharr, "hanend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
