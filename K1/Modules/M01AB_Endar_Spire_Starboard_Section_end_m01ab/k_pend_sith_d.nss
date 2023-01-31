void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 1005:
			if ((GetTag(GetLastHostileActor(OBJECT_SELF)) == "end_assaultdroid")) {
				ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0);
			}
			break;
		case 1007:
			SetGlobalNumber("END_SITH_DEAD", (GetGlobalNumber("END_SITH_DEAD") + 1));
			if ((GetGlobalNumber("END_SITH_DEAD") >= 5)) {
				SetLocked(GetObjectByTag("end_door04", 0), 0);
			}
	}
}