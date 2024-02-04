void main() {
	AurPostString("a_262t3remove", 5, 7, 5.0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	object oT3M4 = GetObjectByTag("T3M4", 0);
	DestroyObject(oT3M4, 0.0, 1, 0.0, 0);
}