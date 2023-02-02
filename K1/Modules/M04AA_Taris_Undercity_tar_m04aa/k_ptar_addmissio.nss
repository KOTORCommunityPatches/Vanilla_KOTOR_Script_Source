void main() {
	
	AddAvailableNPCByTemplate(NPC_MISSION, "p_mission");
	
	if (GetPartyMemberCount() > 1)
		{
			DelayCommand(1.0, ShowPartySelectionGUI("k_ptar_desmis", NPC_MISSION, NPC_CARTH));
		}
		else
			{
				DelayCommand(1.0, ShowPartySelectionGUI("k_ptar_desmis", NPC_MISSION, -1));
			}
}
