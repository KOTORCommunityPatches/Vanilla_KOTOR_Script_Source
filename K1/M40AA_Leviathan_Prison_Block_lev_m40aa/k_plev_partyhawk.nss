void main() {
	
	AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla");
	AddAvailableNPCByTemplate(NPC_CARTH, "p_carth");
	
	DelayCommand(1.0, ShowPartySelectionGUI("k_plev_killbc", NPC_CARTH, NPC_BASTILA));
}
