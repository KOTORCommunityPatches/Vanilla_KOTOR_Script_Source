int StartingConditional() {
	int int1 = 0;
	object oPC = GetFirstPC();
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_01"))) {
		int1 = 1;
	}
	else {
		if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_02"))) {
			int1 = 1;
		}
		else {
			if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_03"))) {
				int1 = 1;
			}
			else {
				if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_04"))) {
					int1 = 1;
				}
				else {
					if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_05"))) {
						int1 = 1;
					}
					else {
						if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_06"))) {
							int1 = 1;
						}
						else {
							if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_07"))) {
								int1 = 1;
							}
							else {
								if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_08"))) {
									int1 = 1;
								}
								else {
									if (GetIsObjectValid(GetItemPossessedBy(oPC, "u_l_colo_09"))) {
										int1 = 1;
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return int1;
}

