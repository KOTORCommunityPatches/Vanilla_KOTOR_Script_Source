void main() {
	if (((GetEnteringObject() == GetPartyLeader()) && (GetJournalEntry("PaPass") == 30))) {
		object oPazaakDen = GetObjectByTag("PazaakDen", 0);
		DelayCommand(1.0, AssignCommand(oPazaakDen, ActionCloseDoor(oPazaakDen)));
		oPazaakDen = GetObjectByTag("PazaakDen", 1);
		DelayCommand(1.0, AssignCommand(oPazaakDen, ActionCloseDoor(oPazaakDen)));
	}
}
