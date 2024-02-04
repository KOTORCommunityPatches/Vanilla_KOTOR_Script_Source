void main() {
	AurPostString("a_removedoorblk: entered..", 5, 5, 3.0);
	object oNearestDoorinvblk = GetNearestObjectByTag("doorinvblk", OBJECT_SELF, 1);
	if ((GetDistanceToObject(oNearestDoorinvblk) < 2.0)) {
		AurPostString("a_removedoorblk: blocker within 2m", 5, 6, 3.0);
		DestroyObject(oNearestDoorinvblk, 0.0, 0, 0.0, 0);
	}
}