void main() {
	object oPerceived = GetLastPerceived();
	if ((!GetIsObjectValid(oPerceived))) {
		return;
	}
	if ((!GetObjectSeen(oPerceived, OBJECT_SELF))) {
		return;
	}
	if (GetIsEnemy(oPerceived, OBJECT_SELF)) {
		SetLocalBoolean(OBJECT_SELF, 42, 1);
		ForceHeartbeat(OBJECT_SELF);
	}
}

