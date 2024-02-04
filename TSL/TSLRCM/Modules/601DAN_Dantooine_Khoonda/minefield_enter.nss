void main() {
	object oEntering = GetEnteringObject();
	AurPostString(("Entering: " + GetTag(oEntering)), 5, 14, 10.0);
	if ((!GetIsObjectValid(oEntering))) {
		return;
	}
	if ((GetBaseItemType(oEntering) == 58)) {
		AurPostString("*** About to Place Mine ***!!!", 5, 15, 5.0);
	}
	else {
		AurPostString("Not a Mine.", 5, 15, 5.0);
	}
}