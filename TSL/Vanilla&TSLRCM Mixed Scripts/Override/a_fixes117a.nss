void main() {
	object oPC = GetFirstPC();
	int int1;
	if ((GetGlobalNumber("000_Skill_Worst_Quest") == 1)) {
		int1 = 3;
	}
	else {
		if ((GetGlobalNumber("000_Skill_Worst_Quest") == 2)) {
			int1 = 7;
		}
		else {
			if ((GetGlobalNumber("000_Skill_Worst_Quest") == 3)) {
				int1 = 5;
			}
			else {
				if ((GetGlobalNumber("000_Skill_Worst_Quest") == 4)) {
					int1 = 1;
				}
				else {
					if ((GetGlobalNumber("000_Skill_Worst_Quest") == 5)) {
						int1 = 2;
					}
					else {
						if ((GetGlobalNumber("000_Skill_Worst_Quest") == 6)) {
							int1 = 0;
						}
						else {
							if ((GetGlobalNumber("000_Skill_Worst_Quest") == 7)) {
								int1 = 4;
							}
							else {
								if ((GetGlobalNumber("000_Skill_Worst_Quest") == 8)) {
									int1 = 6;
								}
							}
						}
					}
				}
			}
		}
	}
	object object3 = GetFirstPC();
	int int10;
	if ((GetGlobalNumber("000_Skill_Best_Quest") == 1)) {
		int10 = 3;
	}
	else {
		if ((GetGlobalNumber("000_Skill_Best_Quest") == 2)) {
			int10 = 7;
		}
		else {
			if ((GetGlobalNumber("000_Skill_Best_Quest") == 3)) {
				int10 = 5;
			}
			else {
				if ((GetGlobalNumber("000_Skill_Best_Quest") == 4)) {
					int10 = 1;
				}
				else {
					if ((GetGlobalNumber("000_Skill_Best_Quest") == 5)) {
						int10 = 2;
					}
					else {
						if ((GetGlobalNumber("000_Skill_Best_Quest") == 6)) {
							int10 = 0;
						}
						else {
							if ((GetGlobalNumber("000_Skill_Best_Quest") == 7)) {
								int10 = 4;
							}
							else {
								if ((GetGlobalNumber("000_Skill_Best_Quest") == 8)) {
									int10 = 6;
								}
							}
						}
					}
				}
			}
		}
	}
	AdjustCreatureSkills(GetFirstPC(), int1, 1);
	AdjustCreatureSkills(GetFirstPC(), int10, 1);
}

