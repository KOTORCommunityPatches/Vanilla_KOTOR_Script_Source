void main() {
	ActionMoveToObject(GetWaypointByTag("From_502OND"), 1, 1.0);
	DelayCommand(2.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
}