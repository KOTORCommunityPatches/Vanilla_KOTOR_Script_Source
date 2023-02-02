void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetSkillRank(3, GetPCSpeaker()) > 4)) {
				SetLocalBoolean(OBJECT_SELF, 52, 1);
			}
			break;
		case 1:
			SetLocalBoolean(OBJECT_SELF, 51, 1);
			CreateItemOnObject("pl_fakeholocron", GetFirstPC(), 1, 0);
			TakeGoldFromCreature(1000, GetFirstPC(), 0);
			break;
		case 2:
			CreateItemOnObject("pl_fakeholocron", GetFirstPC(), 1, 0);
			break;
	}
}
