void main() {
	if (((GetGlobalNumber("G_PC_Align_Val") > 49) && (GetGlobalNumber("GBL_GAME_COMPLETE") >= 2))) {
		IncrementGlobalNumber("GBL_GAME_COMPLETE", 1);
	}
	else {
		if (((GetGlobalNumber("G_PC_Align_Val") > 49) && (GetGlobalNumber("GBL_GAME_COMPLETE") == 0))) {
			SetGlobalNumber("GBL_GAME_COMPLETE", 1);
		}
		else {
			if ((GetGlobalNumber("GBL_GAME_COMPLETE") == 1)) {
				SetGlobalNumber("GBL_GAME_COMPLETE", 3);
			}
			else {
				if ((GetGlobalNumber("GBL_GAME_COMPLETE") == 0)) {
					SetGlobalNumber("GBL_GAME_COMPLETE", 2);
				}
			}
		}
	}
	UnlockAllSongs();
	EndGame(0);
}

