void main() {
	
	if (IsAvailableCreature(NPC_BASTILA) == FALSE)
		{
			AddAvailableNPCByTemplate(NPC_BASTILA, "end_trask");
			SetAreaUnescapable(FALSE);
			DelayCommand(0.1, ShowPartySelectionGUI("k_pend_reset", NPC_BASTILA, -1));
			DelayCommand(0.1, DestroyObject(OBJECT_SELF));
		}
}
