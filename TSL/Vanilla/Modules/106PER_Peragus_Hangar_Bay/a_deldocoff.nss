void main() {
	object oDockOff = GetObjectByTag("DockOff", 0);
	if ((!GetIsObjectValid(oDockOff))) {
		return;
	}
	DestroyObject(oDockOff, 0.0, 0, 0.0, 0);
}
