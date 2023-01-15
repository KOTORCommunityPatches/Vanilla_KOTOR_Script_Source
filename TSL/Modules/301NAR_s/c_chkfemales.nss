int StartingConditional() {
	if ((GetGender(GetFirstPC()) == 1)) {
		return 1;
	}
	else {
		if (IsNPCPartyMember(7)) {
			return 1;
		}
		else {
			if (IsNPCPartyMember(4)) {
				return 1;
			}
			else {
				if (IsNPCPartyMember(9)) {
					return 1;
				}
				else {
					return 0;
				}
			}
		}
	}
}

