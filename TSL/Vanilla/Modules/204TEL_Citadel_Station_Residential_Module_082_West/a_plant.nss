void main() {
	SetKeepStealthInDialog(1);
	AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
