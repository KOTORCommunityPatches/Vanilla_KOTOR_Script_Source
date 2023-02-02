void main() {
	object oAdm_Console = GetObjectByTag("Adm_Console", 0);
	if (GetIsObjectValid(oAdm_Console)) {
		AssignCommand(oAdm_Console, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
