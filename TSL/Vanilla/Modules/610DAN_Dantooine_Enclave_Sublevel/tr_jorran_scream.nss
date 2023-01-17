void main() {
	object oNpc_jorran = GetObjectByTag("npc_jorran", 0);
	if ((GetEnteringObject() == oNpc_jorran)) {
		if ((!GetLocalBoolean(OBJECT_SELF, 34))) {
			SetLocalBoolean(OBJECT_SELF, 34, 1);
			DelayCommand(0.3, PlaySound("as_pl_sthpain_01"));
		}
	}
}

