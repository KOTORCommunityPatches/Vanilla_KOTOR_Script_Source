void main() {
	object oMedCon = GetObjectByTag("MedCon", 0);
	if (GetIsObjectValid(oMedCon)) {
		AssignCommand(oMedCon, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
