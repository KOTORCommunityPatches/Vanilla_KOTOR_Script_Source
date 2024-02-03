void main() {
	if ((GetGlobalNumber("601DAN_Side") == 2)) {
		SetLocalBoolean(OBJECT_SELF, 29, 1);
		ShowPartySelectionGUI("fight_on", 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
	if ((GetGlobalNumber("601DAN_Side") == 1)) {
		SetLocalBoolean(OBJECT_SELF, 29, 1);
		ShowPartySelectionGUI("defend_on2", 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
}

