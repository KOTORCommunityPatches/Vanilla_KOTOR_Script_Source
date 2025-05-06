void main() {
	object oAttacker = GetLastAttacker(OBJECT_SELF);
	object object3 = GetLastWeaponUsed(oAttacker);
	int int1 = GetItemHasItemProperty(object3, 64);
	if ((!int1)) {
		BarkString(oAttacker, 48325);
	}
}

