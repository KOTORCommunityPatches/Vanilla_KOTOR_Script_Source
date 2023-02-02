void main() {
	object o203_TSF2a = GetObjectByTag("203_TSF2a", 0);
	if (GetIsObjectValid(o203_TSF2a)) {
		AssignCommand(o203_TSF2a, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
