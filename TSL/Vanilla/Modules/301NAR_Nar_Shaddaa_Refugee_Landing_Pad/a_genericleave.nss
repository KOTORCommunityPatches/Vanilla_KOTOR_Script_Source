void main() {
	object oFROM_302NAR = GetWaypointByTag("FROM_302NAR");
	AssignCommand(OBJECT_SELF, ActionMoveToObject(oFROM_302NAR, 0, 1.0));
	DelayCommand(2.5, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
}
