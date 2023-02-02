void main() {
	if ((IsAvailableCreature(0) == 0)) {
		AddAvailableNPCByTemplate(0, "end_trask");
		SetAreaUnescapable(FALSE);
		DelayCommand(0.1, ShowPartySelectionGUI("k_pend_reset", 0, -1));
		DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, TRUE, 0.0));
	}
}
