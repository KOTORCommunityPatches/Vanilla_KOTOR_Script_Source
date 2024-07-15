#include "k_inc_end"

void main() {
	
	if (IsAvailableCreature(NPC_BASTILA) == FALSE)
		{
			AddAvailableNPCByTemplate(NPC_BASTILA, "end_trask");
			SetAreaUnescapable(FALSE);
			DelayCommand(0.1, ShowPartySelectionGUI("k_pend_reset", NPC_BASTILA));
			DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, TRUE, 0.0));
		}
}
