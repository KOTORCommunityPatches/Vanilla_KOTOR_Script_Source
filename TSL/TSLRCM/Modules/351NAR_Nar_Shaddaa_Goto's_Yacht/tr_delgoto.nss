void main() {
	if (((GetEnteringObject() == GetPartyLeader()) && (!GetLocalBoolean(OBJECT_SELF, 36)))) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		DestroyObject(GetObjectByTag("GotoHolo", 0), 0.0, 0, 0.0, 0);
	}
}