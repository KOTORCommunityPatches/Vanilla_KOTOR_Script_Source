int StartingConditional() {
	if (((((((!IsAvailableCreature(0)) && (!IsAvailableCreature(4))) && (!IsAvailableCreature(11))) && (!IsAvailableCreature(9))) && (!IsAvailableCreature(2))) && (!IsAvailableCreature(7)))) {
		return 1;
	}
	if (((((((!IsAvailableCreature(4)) && (!IsAvailableCreature(11))) && (!IsAvailableCreature(9))) && (!IsAvailableCreature(2))) && (!IsAvailableCreature(7))) && (GetGlobalNumber("903_Atton_Sion") == 2))) {
		return 1;
	}
	return 0;
}