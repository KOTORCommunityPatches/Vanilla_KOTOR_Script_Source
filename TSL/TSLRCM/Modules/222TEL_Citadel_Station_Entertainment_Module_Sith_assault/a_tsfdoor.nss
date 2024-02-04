void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	ChangeToStandardFaction(GetObjectByTag("ond_sold", 0), 2);
	ChangeToStandardFaction(GetObjectByTag("ond_sold", 1), 2);
}