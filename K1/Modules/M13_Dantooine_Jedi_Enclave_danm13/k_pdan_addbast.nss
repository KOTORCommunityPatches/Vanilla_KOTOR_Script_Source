#include "k_inc_dan"

void main() {
	
	if (IsAvailableCreature(NPC_BASTILA) == FALSE)
		{
			AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla");
		}
	
	if (GetNPCSelectability(NPC_BASTILA) == FALSE)
		{
			SetNPCSelectability(NPC_BASTILA, TRUE);
			SetGlobalBoolean("DAN_BASTILA_AT_JEDI", FALSE);
			AssignCommand(GetFirstPC(), ShowPartySelectionGUI("k_pdan_alhan02", NPC_BASTILA, -1));
			DestroyObject(GetBastila(), 0.0, TRUE);
		}
	
}
