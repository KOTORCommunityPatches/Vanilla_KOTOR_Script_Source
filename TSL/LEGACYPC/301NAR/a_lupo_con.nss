void main() {
	if ((GetLocalBoolean(GetObjectByTag("Lupo", 0), 55) == 0)) {
		SetLocalBoolean(GetObjectByTag("lupo", 0), 55, 1);
		AssignCommand(GetObjectByTag("lupo", 0), ActionStartConversation(GetObjectByTag("lupo", 0), "enter_lupo", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

