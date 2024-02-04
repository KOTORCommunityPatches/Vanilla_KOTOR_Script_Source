void main() {
	object o903corps = GetObjectByTag("903corps", 0);
	if (GetIsObjectValid(o903corps)) {
		AssignCommand(o903corps, ClearAllActions());
		AssignCommand(o903corps, ActionStartConversation(o903corps, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}