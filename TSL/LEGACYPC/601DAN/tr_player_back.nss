void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 29)) {
			return;
		}
		if (((GetGlobalNumber("601DAN_Battle_Mili") == 1) && (GetGlobalNumber("601DAN_Side") == 1))) {
			SetLocalBoolean(OBJECT_SELF, 29, 1);
			object oTr_player_front = GetObjectByTag("tr_player_front", 0);
			if (GetIsObjectValid(oTr_player_front)) {
				SetLocalBoolean(oTr_player_front, 29, 1);
			}
			ShowPartySelectionGUI("defend_on", 0xFFFFFFFF, 0xFFFFFFFF, 0);
		}
	}
}

