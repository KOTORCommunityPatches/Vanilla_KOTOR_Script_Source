void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 33)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 33, 1);
	}
}

