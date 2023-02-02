void main() {
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, 30);
	if ((nLocalBool == 0)) {
		GiveXPToCreature(GetPCSpeaker(), 50);
		SetLocalBoolean(OBJECT_SELF, 30, 1);
	}
}
