void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		AurPostString("a_261_enter: fade in 2.0", 5, 5, 5.0);
		SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
		SetAreaUnescapable(1);
		SetDisableTransit(1);
	}
}