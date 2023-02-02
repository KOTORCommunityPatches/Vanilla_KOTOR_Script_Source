void main() {
	object oPazaakDen = GetObjectByTag("PazaakDen", 0);
	object object3 = GetObjectByTag("PazaakDen", 1);
	SetLocked(oPazaakDen, 0);
	SetLocked(object3, 0);
	DelayCommand(0.5, AssignCommand(oPazaakDen, ActionOpenDoor(oPazaakDen)));
	DelayCommand(0.5, AssignCommand(object3, ActionOpenDoor(object3)));
}
