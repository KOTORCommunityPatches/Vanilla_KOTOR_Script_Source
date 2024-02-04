void main() {
	object object1 = OBJECT_SELF;
	if (GetCommandable(object1)) {
		ClearAllActions();
		CancelCombat(object1);
		ActionMoveToObject(GetNearestObjectByTag("WP_VOSSK_TWIN1_0", OBJECT_SELF, 1), 1, 2.0);
		ActionDoCommand(SetCommandable(1, object1));
		DelayCommand(2.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
		SetCommandable(0, OBJECT_SELF);
	}
}