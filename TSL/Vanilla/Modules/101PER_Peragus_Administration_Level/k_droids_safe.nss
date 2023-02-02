void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		int int1 = 1;
		int int2 = 0;
		string string1 = "g_assassindrd01";
		object object3 = GetObjectByTag(string1, int2);
		object oPrisonroomdr = GetObjectByTag("prisonroomdr", 0);
		while ((object3 != OBJECT_INVALID)) {
			if (GetIsObjectValid(object3)) {
				if ((GetReputation(object3, GetFirstPC()) <= 10)) {
					SetLocalBoolean(oPrisonroomdr, 30, 0);
					int1 = 0;
					break;
				}
			}
			else {
				AurPostString("Droid not valid", 5, 7, 3.0);
			}
			(int2++);
			object3 = GetObjectByTag(string1, int2);
		}
		if ((int1 == 1)) {
			if ((GetLocked(oPrisonroomdr) == 1)) {
				AssignCommand(oPrisonroomdr, ClearAllEffects());
				SetLocked(oPrisonroomdr, 0);
			}
		}
	}
}
