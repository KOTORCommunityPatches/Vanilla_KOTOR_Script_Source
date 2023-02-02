void main() {
	NoClicksFor(2.0);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	object oArea = GetArea(OBJECT_SELF);
	AssignCommand(oArea, DelayCommand(1.0, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0)));
	object oZezkaiel = GetObjectByTag("Zezkaiel", 0);
	AssignCommand(oArea, DelayCommand(1.0, DestroyObject(oZezkaiel, 0.0, 1, 0.0, 0)));
}
