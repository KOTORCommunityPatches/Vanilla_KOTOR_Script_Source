void main() {
	int int1 = GetRunScriptVar();
	if ((int1 == 5)) {
		PlayRoomAnimation("m12aa_01q", 9);
		SetGlobalBoolean("K_SPACE_SKYBOX_ON", 0);
	}
	else {
		if ((int1 == 15)) {
			PlayRoomAnimation("m12aa_01q", 2);
		}
		else {
			if ((int1 == 20)) {
				PlayRoomAnimation("m12aa_01q", 1);
			}
			else {
				if ((int1 == 25)) {
					PlayRoomAnimation("m12aa_01q", 6);
				}
				else {
					if ((int1 == 30)) {
						PlayRoomAnimation("m12aa_01q", 5);
					}
					else {
						if ((int1 == 35)) {
							PlayRoomAnimation("m12aa_01q", 4);
						}
						else {
							if ((int1 == 40)) {
								PlayRoomAnimation("m12aa_01q", 8);
							}
							else {
								if ((int1 == 45)) {
									PlayRoomAnimation("m12aa_01q", 7);
								}
								else {
									if ((int1 == 50)) {
										PlayRoomAnimation("m12aa_01q", 3);
									}
									else {
										if ((int1 > 50)) {
											PlayRoomAnimation("m12aa_01q", 10);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

