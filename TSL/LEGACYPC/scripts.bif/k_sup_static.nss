void main() {
	SetCommandable(1, OBJECT_SELF);
	int nRandom = d4(1);
	if ((nRandom == 1)) {
		ClearAllActions();
	}
	else {
		if ((nRandom == 2)) {
			ClearAllActions();
			object oNearest = GetNearestCreature(3, 1, OBJECT_SELF, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
			ActionMoveAwayFromObject(oNearest, 1, 10.0);
		}
		else {
			if ((nRandom == 3)) {
				ClearAllActions();
				ActionPlayAnimation(18, 1.0, 5.0);
			}
		}
	}
	SetCommandable(0, OBJECT_SELF);
}

