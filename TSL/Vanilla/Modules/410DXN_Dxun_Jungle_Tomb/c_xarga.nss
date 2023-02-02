int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				int int3 = 0;
				int3 = 0;
				while ((int3 < 3)) {
				if ((GetSkillRank(2, GetPartyMemberByIndex(int3)) != (-1))) {
					return 1;
				}
					(int3++);
				}
			}
			break;
		case 1:
			{
				int int5 = 0;
				int5 = 0;
				while ((int5 < 3)) {
				if ((GetSkillRank(1, GetPartyMemberByIndex(int5)) != (-1))) {
					return 1;
				}
					(int5++);
				}
			}
			break;
		case 2:
			{
				int int7 = 0;
				int7 = 0;
				while ((int7 < 3)) {
				if ((GetSkillRank(2, GetPartyMemberByIndex(int7)) != (-1))) {
					if ((GetSkillRank(5, GetPartyMemberByIndex(int7)) != (-1))) {
						return 1;
					}
				}
					(int7++);
				}
			}
			break;
	}
	return 0;
}
