void main() {
	int nParam1 = GetScriptParameter(1);
	int int3 = 0;
	string string1 = "hk51_1";
	object object1 = GetObjectByTag(string1, int3);
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	switch (nParam1) {
		case 0:
			int3 = 0;
			while ((int3 <= 6)) {
				ChangeToStandardFaction(object1, 3);
				(int3++);
				object1 = GetObjectByTag(string1, int3);
			}
			break;
		case 1:
			int3 = 5;
			while ((int3 <= 10)) {
				ChangeToStandardFaction(object1, 3);
				(int3++);
				object1 = GetObjectByTag(string1, int3);
			}
			break;
		case 2:
			int3 = 9;
			while ((int3 <= 14)) {
				ChangeToStandardFaction(object1, 3);
				(int3++);
				object1 = GetObjectByTag(string1, int3);
			}
			break;
		case 3:
			int3 = 14;
			while ((int3 < 17)) {
				ChangeToStandardFaction(object1, 3);
				(int3++);
				object1 = GetObjectByTag(string1, int3);
			}
			break;
		case 4:
			int3 = 16;
			while ((int3 < 21)) {
				ChangeToStandardFaction(object1, 3);
				AssignCommand(object1, ActionAttack(GetFirstPC(), 0));
				(int3++);
				object1 = GetObjectByTag(string1, int3);
			}
			ChangeToStandardFaction(oHk51cs, 3);
			AssignCommand(oHk51cs, ActionAttack(GetFirstPC(), 0));
			break;
	}
}

