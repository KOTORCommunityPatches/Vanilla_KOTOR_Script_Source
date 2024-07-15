void main() {
	SetCommandable(1, OBJECT_SELF);
	ClearAllActions();
	int nRandom = d10(1);
	ActionAttack(GetNearestCreature(3, 0, OBJECT_SELF, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF), 0);
	SetCommandable(0, OBJECT_SELF);
}

