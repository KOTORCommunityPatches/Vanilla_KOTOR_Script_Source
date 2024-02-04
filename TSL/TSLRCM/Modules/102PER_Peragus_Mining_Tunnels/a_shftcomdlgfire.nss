void main() {
	DestroyObject(GetObjectByTag("Coorta", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("CoortaThug1", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("CoortaThug2", 0), 0.0, 0, 0.0, 0);
	object oShftcom = GetObjectByTag("Shftcom", 0);
	if (GetIsObjectValid(oShftcom)) {
		AssignCommand(oShftcom, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}