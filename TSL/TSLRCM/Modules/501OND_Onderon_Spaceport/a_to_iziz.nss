void main() {
	AddAvailableNPCByTemplate(2, "p_mand");
	DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
	ShowPartySelectionGUI("a_to_iziz2", 2, 0xFFFFFFFF, 0);
}