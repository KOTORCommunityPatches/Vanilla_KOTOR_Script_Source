// Byte code does not match

void main() {
	if (GetGlobalBoolean("MAN_ARBITER_DONE")) {
		ActionOpenDoor(OBJECT_SELF);
	}
	else {
		ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
	}
}