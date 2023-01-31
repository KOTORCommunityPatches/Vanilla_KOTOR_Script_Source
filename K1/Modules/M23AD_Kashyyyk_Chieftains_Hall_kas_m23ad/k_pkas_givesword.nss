void main() {
	
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	object oSpeaker = GetPCSpeaker();
	
	CreateItemOnObject("G_w_Vbroswrd05", oSpeaker, 1);
	SetGlobalBoolean("tat_ZaalbarTaken", FALSE);
	SetNPCSelectability(NPC_ZAALBAR, TRUE);
	ShowPartySelectionGUI();
	DestroyObject(oZaalbar);
}