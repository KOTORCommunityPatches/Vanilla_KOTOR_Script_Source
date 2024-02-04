void main() {
	object oBrfRoomCon = GetObjectByTag("BrfRoomCon", 0);
	if (GetIsObjectValid(oBrfRoomCon)) {
		AssignCommand(oBrfRoomCon, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}