void main() {
	if ((GetExitingObject() == GetPartyLeader())) {
		SetLocalBoolean(OBJECT_SELF, 25, 1);
	}
}
