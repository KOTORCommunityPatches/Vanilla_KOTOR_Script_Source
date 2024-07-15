void main() {
	object oRepCapt = GetObjectByTag("RepCapt", 0);
	if (GetIsObjectValid(oRepCapt)) {
		AssignCommand(oRepCapt, ActionStartConversation(GetPCSpeaker(), "RepCapt2", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

