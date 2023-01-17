void main() {
	int int1 = 0;
	object oMine_merc = GetObjectByTag("mine_merc", int1);
	while (GetIsObjectValid(oMine_merc)) {
		DestroyObject(oMine_merc, 0.0, 0, 0.0, 0);
		oMine_merc = GetObjectByTag("mine_merc", (int1++));
	}
}

