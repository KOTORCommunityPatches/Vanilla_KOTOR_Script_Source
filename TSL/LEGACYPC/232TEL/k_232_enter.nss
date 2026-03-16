void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetGlobalBoolean("232_SHUTTLE_GONE")) {
			PlayRoomAnimation("232Tel14", 2);
		}
		else {
			PlayRoomAnimation("232Tel14", 1);
		}
		if ((GetGlobalNumber("232TEL_Reactor") == 0)) {
			PlayRoomAnimation("232tel01", 1);
		}
		else {
			if ((GetGlobalNumber("232TEL_Reactor") == 1)) {
				PlayRoomAnimation("232tel01", 2);
			}
		}
		if ((!GetGlobalBoolean("232_FIRST_ENTER"))) {
			SetGlobalBoolean("232_FIRST_ENTER", 1);
			SetPartyLeader(0xFFFFFFFF);
		}
	}
}

