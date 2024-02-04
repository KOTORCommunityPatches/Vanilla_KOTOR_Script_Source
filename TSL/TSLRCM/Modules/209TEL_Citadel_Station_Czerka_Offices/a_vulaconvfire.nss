void main() {
	object oVula = GetObjectByTag("vula", 0);
	if (GetIsObjectValid(oVula)) {
		AssignCommand(oVula, ClearAllActions());
		AssignCommand(oVula, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(GetObjectByTag("walltex", 0), 41, 1);
	}
}