void main() {
	object o203_TSF2 = GetObjectByTag("203_TSF2", 0);
	if (GetIsObjectValid(o203_TSF2)) {
		AssignCommand(o203_TSF2, ClearAllActions());
		AssignCommand(o203_TSF2, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

