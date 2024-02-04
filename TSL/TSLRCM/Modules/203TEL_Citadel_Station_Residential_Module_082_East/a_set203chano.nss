void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalNumber("203TEL_Chano", 1);
	}
	else {
		if ((nParam1 == 2)) {
			SetGlobalNumber("203TEL_Chano", 2);
		}
		else {
			if ((nParam1 == 3)) {
				SetGlobalNumber("203TEL_Chano", 3);
				if ((GetItemPossessedBy(GetPartyLeader(), "drdtchcrds") == OBJECT_INVALID)) {
					CreateItemOnObject("drdtchcrds", GetPCSpeaker(), 1, 0);
				}
			}
			else {
				if ((nParam1 == 4)) {
					SetGlobalNumber("203TEL_Chano", 4);
					if ((GetItemPossessedBy(GetPartyLeader(), "drdtchcrds") == OBJECT_INVALID)) {
						CreateItemOnObject("drdtchcrds", GetPCSpeaker(), 1, 0);
					}
				}
				else {
					if ((nParam1 == 5)) {
						if ((GetGlobalNumber("203TEL_Chano") == 4)) {
							SetGlobalNumber("203TEL_Chano", 5);
						}
						else {
							if ((GetItemPossessedBy(GetPartyLeader(), "drdtchcrds") == OBJECT_INVALID)) {
								CreateItemOnObject("drdtchcrds", GetPCSpeaker(), 1, 0);
							}
							SetGlobalNumber("203TEL_Chano", 5);
						}
					}
					else {
						if ((nParam1 == 6)) {
							SetGlobalNumber("203TEL_Chano", 6);
						}
						else {
							if ((nParam1 == 7)) {
								SetGlobalNumber("203TEL_Chano", 7);
							}
						}
					}
				}
			}
		}
	}
}