void main() {
	object o104Kreia = GetObjectByTag("104Kreia", 0);
	if (GetIsObjectValid(o104Kreia)) {
		AssignCommand(o104Kreia, ActionStartConversation(GetPCSpeaker(), "104Kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}