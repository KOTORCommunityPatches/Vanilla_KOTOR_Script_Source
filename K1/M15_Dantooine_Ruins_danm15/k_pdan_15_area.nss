void main() {
	if (GetIsPC(GetEnteringObject()))
		{
			if (IsAvailableCreature(NPC_BASTILA) == FALSE)
				{
					AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla");
				}
			
			if (GetNPCSelectability(NPC_BASTILA) == FALSE)
				{
					SetNPCSelectability(NPC_BASTILA, TRUE);
				}
			
			if (IsNPCPartyMember(NPC_BASTILA) == FALSE && GetGlobalBoolean("DAN_STARMAP_DONE") == FALSE)
				{
					DelayCommand(2.0, ShowPartySelectionGUI("", NPC_BASTILA, -1));
				}
		}
}
