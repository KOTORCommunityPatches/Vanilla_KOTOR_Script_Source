void main() {
	object oDoor_Ith_01 = GetObjectByTag("Door_Ith_01", 0);
	SetLocked(oDoor_Ith_01, 0);
	AssignCommand(oDoor_Ith_01, ActionOpenDoor(oDoor_Ith_01));
	SetLocalBoolean(OBJECT_SELF, 30, 1);
}
