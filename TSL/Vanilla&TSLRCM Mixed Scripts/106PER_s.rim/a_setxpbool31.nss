void main() {
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, 31);
	if ((nLocalBool == 0)) {
		GiveXPToCreature(GetPCSpeaker(), 50);
		SetLocalBoolean(OBJECT_SELF, 31, 1);
	}
}

