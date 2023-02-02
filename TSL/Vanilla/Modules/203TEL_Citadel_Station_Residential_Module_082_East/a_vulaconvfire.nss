void main() {
	object oFakevula = GetObjectByTag("fakevula", 0);
	if (GetIsObjectValid(oFakevula)) {
		AssignCommand(oFakevula, ClearAllActions());
		AssignCommand(oFakevula, ActionStartConversation(GetPCSpeaker(), "203vula", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
