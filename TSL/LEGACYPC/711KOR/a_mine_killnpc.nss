void main() {
	object oEntering = GetEnteringObject();
	if ((("g_repsold" == GetTag(oEntering)) && (!GetLocalBoolean(OBJECT_SELF, 33)))) {
		SetLocalBoolean(OBJECT_SELF, 33, 1);
		ChangeToStandardFaction(oEntering, 5);
		AssignCommand(oEntering, ClearAllActions());
		DestroyObject(oEntering, 0.0, 1, 0.0, 0);
	}
}

