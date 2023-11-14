void main() {
	
	DestroyObject(GetObjectByTag("carth", 0), 0.0, TRUE);
	
	DelayCommand(0.5, ShowPartySelectionGUI("k_ptar_exitapt", NPC_CARTH));
}
