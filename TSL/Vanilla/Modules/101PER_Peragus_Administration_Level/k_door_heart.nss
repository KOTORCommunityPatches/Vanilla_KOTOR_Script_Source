void main() {
	object oPrisonroomdr = GetObjectByTag("prisonroomdr", 0);
	if (GetIsObjectValid(oPrisonroomdr)) {
		if ((GetLocalBoolean(oPrisonroomdr, 30) == 0)) {
			if ((GetLocalBoolean(oPrisonroomdr, 29) == 0)) {
				AurPostString("k_door_heart: hold effect set", 6, 6, 6.0);
				effect efVisual = EffectVisualEffect(2008, 0);
				ApplyEffectToObject(2, efVisual, oPrisonroomdr, 0.0);
				SetLocalBoolean(oPrisonroomdr, 29, 1);
			}
		}
		int int4 = 1;
		int int5 = 0;
		string string1 = "g_assassindrd01";
		object object3 = GetObjectByTag(string1, int5);
		while ((object3 != OBJECT_INVALID)) {
			if (GetIsObjectValid(object3)) {
				if ((GetReputation(object3, GetFirstPC()) <= 10)) {
					SetLocalBoolean(oPrisonroomdr, 30, 0);
					int4 = 0;
					break;
				}
			}
			else {
				AurPostString("Droid not valid", 5, 7, 3.0);
			}
			(int5++);
			object3 = GetObjectByTag(string1, int5);
		}
		if (((int4 == 1) && (!GetLocalBoolean(oPrisonroomdr, 30)))) {
			if ((GetLocked(oPrisonroomdr) == 1)) {
				AssignCommand(oPrisonroomdr, ClearAllEffects());
				SetLocked(oPrisonroomdr, 0);
				SetLocalBoolean(oPrisonroomdr, 29, 1);
				SetLocalBoolean(oPrisonroomdr, 30, 1);
			}
		}
	}
}
