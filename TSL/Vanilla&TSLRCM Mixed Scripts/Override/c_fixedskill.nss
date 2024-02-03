int StartingConditional() {
	object oPC = GetFirstPC();
	int int1;
	if ((GetGlobalNumber("000_Skill_Worst_Quest") == 1)) {
		int1 = GetSkillRankBase(3, oPC);
	}
	else {
		if ((GetGlobalNumber("000_Skill_Worst_Quest") == 2)) {
			int1 = GetSkillRankBase(7, oPC);
		}
		else {
			if ((GetGlobalNumber("000_Skill_Worst_Quest") == 3)) {
				int1 = GetSkillRankBase(5, oPC);
			}
			else {
				if ((GetGlobalNumber("000_Skill_Worst_Quest") == 4)) {
					int1 = GetSkillRankBase(1, oPC);
				}
				else {
					if ((GetGlobalNumber("000_Skill_Worst_Quest") == 5)) {
						int1 = GetSkillRankBase(2, oPC);
					}
					else {
						if ((GetGlobalNumber("000_Skill_Worst_Quest") == 6)) {
							int1 = GetSkillRankBase(0, oPC);
						}
						else {
							if ((GetGlobalNumber("000_Skill_Worst_Quest") == 7)) {
								int1 = GetSkillRankBase(4, oPC);
							}
							else {
								if ((GetGlobalNumber("000_Skill_Worst_Quest") == 8)) {
									int1 = GetSkillRankBase(6, oPC);
								}
							}
						}
					}
				}
			}
		}
	}
	object object3 = GetFirstPC();
	int int18;
	if ((GetGlobalNumber("000_Skill_Best_Quest") == 1)) {
		int18 = GetSkillRankBase(3, object3);
	}
	else {
		if ((GetGlobalNumber("000_Skill_Best_Quest") == 2)) {
			int18 = GetSkillRankBase(7, object3);
		}
		else {
			if ((GetGlobalNumber("000_Skill_Best_Quest") == 3)) {
				int18 = GetSkillRankBase(5, object3);
			}
			else {
				if ((GetGlobalNumber("000_Skill_Best_Quest") == 4)) {
					int18 = GetSkillRankBase(1, object3);
				}
				else {
					if ((GetGlobalNumber("000_Skill_Best_Quest") == 5)) {
						int18 = GetSkillRankBase(2, object3);
					}
					else {
						if ((GetGlobalNumber("000_Skill_Best_Quest") == 6)) {
							int18 = GetSkillRankBase(0, object3);
						}
						else {
							if ((GetGlobalNumber("000_Skill_Best_Quest") == 7)) {
								int18 = GetSkillRankBase(4, object3);
							}
							else {
								if ((GetGlobalNumber("000_Skill_Best_Quest") == 8)) {
									int18 = GetSkillRankBase(6, object3);
								}
							}
						}
					}
				}
			}
		}
	}
	return (GetGlobalNumber("000_SkillWorst_lvl") < int1);
}

