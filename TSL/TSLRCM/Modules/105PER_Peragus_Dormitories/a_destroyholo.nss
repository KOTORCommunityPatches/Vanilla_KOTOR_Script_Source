void main() {
	SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
	object oMineFor = GetObjectByTag("MineFor", 0);
	if (GetIsObjectValid(oMineFor)) {
		DestroyObject(oMineFor, 0.0, 0, 0.0, 0);
	}
	object oMedOff = GetObjectByTag("MedOff", 0);
	if (GetIsObjectValid(oMedOff)) {
		DestroyObject(oMedOff, 0.0, 0, 0.0, 0);
	}
	object oDockOff = GetObjectByTag("DockOff", 0);
	if (GetIsObjectValid(oDockOff)) {
		DestroyObject(oDockOff, 0.0, 0, 0.0, 0);
	}
	object oCoorta = GetObjectByTag("Coorta", 0);
	if (GetIsObjectValid(oCoorta)) {
		DestroyObject(oCoorta, 0.0, 0, 0.0, 0);
	}
	object oCoortaThug1 = GetObjectByTag("CoortaThug1", 0);
	if (GetIsObjectValid(oCoortaThug1)) {
		DestroyObject(oCoortaThug1, 0.0, 0, 0.0, 0);
	}
	object oCoortaThug2 = GetObjectByTag("CoortaThug2", 0);
	if (GetIsObjectValid(oCoortaThug2)) {
		DestroyObject(oCoortaThug2, 0.0, 0, 0.0, 0);
	}
	object oAdmOff = GetObjectByTag("AdmOff", 0);
	if (GetIsObjectValid(oAdmOff)) {
		DestroyObject(oAdmOff, 0.0, 0, 0.0, 0);
	}
}