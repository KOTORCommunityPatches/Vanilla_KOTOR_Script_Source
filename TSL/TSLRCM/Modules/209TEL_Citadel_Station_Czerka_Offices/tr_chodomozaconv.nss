void main() {
	if (GetLocalBoolean(GetObjectByTag("tr_chodomoza", 0), 40)) {
		AssignCommand(GetObjectByTag("203_moza", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("203_moza", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}