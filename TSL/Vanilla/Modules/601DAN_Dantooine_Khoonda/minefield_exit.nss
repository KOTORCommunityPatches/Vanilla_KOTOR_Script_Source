void main() {
	object oExiting = GetExitingObject();
	AurPostString(("Exiting: " + GetTag(oExiting)), 5, 16, 10.0);
	if ((!GetIsObjectValid(oExiting))) {
		return;
	}
	if ((GetBaseItemType(oExiting) == 58)) {
		AurPostString("*** About to Disarm Mine ***!!!", 5, 17, 5.0);
	}
	else {
		AurPostString("Not a Mine.", 5, 15, 5.0);
	}
}
