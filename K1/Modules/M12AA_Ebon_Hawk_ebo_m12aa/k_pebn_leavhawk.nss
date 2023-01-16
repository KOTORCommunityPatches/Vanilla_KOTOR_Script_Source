void main() {
	
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	
	if (GetEnteringObject() == GetFirstPC() && nGlobal > 0)
		{
			if (GetGlobalNumber("K_CURRENT_PLANET") == 50 && GetGlobalNumber("G_FinalChoice") == 1)
				{
					ShowPartySelectionGUI("k_pebn_exithawk", NPC_BASTILA, -1);
				}
				else
					{
						ShowPartySelectionGUI("k_pebn_exithawk", -1, -1);
					}
		}
}
