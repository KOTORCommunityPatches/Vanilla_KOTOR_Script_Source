void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	object oBithstst = GetObjectByTag("Bithstst", 0);
	object oAssdrd = GetObjectByTag("assdrd", 0);
	if (GetIsObjectValid(oBithstst)) {
		if (GetLocalBoolean(oBithstst, 41)) {
			DestroyObject(oBithstst, 0.0, 0, 0.0, 0);
			DestroyObject(oAssdrd, 0.0, 0, 0.0, 0);
			CreateObject(64, "bitharm", GetLocation(GetObjectByTag("wp_data", 0)), 0);
		}
	}
}