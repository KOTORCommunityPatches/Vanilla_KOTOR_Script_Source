void main() {
	SetCommandable(1, OBJECT_SELF);
	ClearAllActions();
	object oNearest = GetNearestCreature(3, 1, OBJECT_SELF, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	ActionMoveAwayFromObject(oNearest, 1, 10.0);
	SetCommandable(0, OBJECT_SELF);
}

