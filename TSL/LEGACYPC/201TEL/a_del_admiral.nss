void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	object o201_gren = GetObjectByTag("201_gren", 0);
	if (GetIsObjectValid(o201_gren)) {
		DelayCommand(2.0, DestroyObject(o201_gren, 0.0, 1, 0.0, 0));
	}
	object oCede;
	if ((GetGlobalNumber("101PER_Revan_End") == 0)) {
		oCede = GetObjectByTag("carth", 0);
	}
	else {
		oCede = GetObjectByTag("cede", 0);
	}
	if (GetIsObjectValid(oCede)) {
		DelayCommand(2.0, DestroyObject(oCede, 0.0, 1, 0.0, 0));
	}
}

