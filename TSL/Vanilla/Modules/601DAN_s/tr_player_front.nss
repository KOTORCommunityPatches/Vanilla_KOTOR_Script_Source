void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 29)) {
			return;
		}
		if (((GetGlobalNumber("601DAN_Battle_Mili") == 1) && (GetGlobalNumber("601DAN_Side") == 1))) {
			SetLocalBoolean(OBJECT_SELF, 29, 1);
			object oTr_player_back = GetObjectByTag("tr_player_back", 0);
			if (GetIsObjectValid(oTr_player_back)) {
				SetLocalBoolean(oTr_player_back, 29, 1);
			}
			ShowPartySelectionGUI("defend_on", 0xFFFFFFFF, 0xFFFFFFFF, 0);
		}
	}
}

