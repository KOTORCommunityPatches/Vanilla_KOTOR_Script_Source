void main() {
	object oRepCapt = GetObjectByTag("RepCapt", 0);
	if (GetIsObjectValid(oRepCapt)) {
		AssignCommand(oRepCapt, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
