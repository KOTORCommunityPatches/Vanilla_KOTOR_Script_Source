void main() {
	object oDuros = GetObjectByTag("Duros", 0);
	object oTiennInvis = GetObjectByTag("TiennInvis", 0);
	DelayCommand(1.0, AssignCommand(oDuros, SetFacingPoint(GetPosition(oTiennInvis))));
}