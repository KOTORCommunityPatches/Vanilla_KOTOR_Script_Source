void main() {
	
	TakeGoldFromCreature(100, GetPCSpeaker(), TRUE);
	
	SetGlobalBoolean("G_PazzakDeck", TRUE);
	
	CreateItemOnObject("g_i_pazdeck", GetPCSpeaker(), 1);
}
