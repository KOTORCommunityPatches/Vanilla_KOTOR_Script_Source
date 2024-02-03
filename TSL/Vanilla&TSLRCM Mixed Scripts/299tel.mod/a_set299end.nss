void main() {
	int nParam1 = GetScriptParameter(1);
	int int3 = 0;
	string string1 = "hk51";
	string string2 = "hk51_1";
	object object1 = GetObjectByTag(string1, int3);
	object object3 = GetObjectByTag(string2, int3);
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	switch (nParam1) {
		case 0:
			int3 = 0;
			while ((object1 != OBJECT_INVALID)) {
				ChangeToStandardFaction(object1, 3);
				ExecuteScript("k_ai_master", object1, 1003);
				ChangeToStandardFaction(object3, 3);
				ExecuteScript("k_ai_master", object3, 1003);
				(int3++);
				object1 = GetObjectByTag(string1, int3);
				object3 = GetObjectByTag(string2, int3);
			}
			ChangeToStandardFaction(oHk51cs, 3);
			ExecuteScript("k_ai_master", oHk51cs, 1003);
			break;
		case 1:
			while ((object1 != OBJECT_INVALID)) {
				ChangeToStandardFaction(object1, 4);
				ChangeToStandardFaction(object3, 4);
				(int3++);
				object1 = GetObjectByTag(string1, int3);
				object3 = GetObjectByTag(string2, int3);
			}
			ChangeToStandardFaction(oHk51cs, 4);
			break;
	}
	DestroyObject(GetObjectByTag("HK51Destruct", 0), 0.0, 0, 0.0, 0);
}

