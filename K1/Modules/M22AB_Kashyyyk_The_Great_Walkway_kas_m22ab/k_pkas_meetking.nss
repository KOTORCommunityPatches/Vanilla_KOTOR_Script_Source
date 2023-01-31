void main() {
	
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	
	if ((GetIsObjectValid(oZaalbar) == TRUE))
		{
			SetGlobalBoolean("kas_ZaalbarParty", TRUE);
			RemovePartyMember(NPC_ZAALBAR);
			SetNPCSelectability(NPC_ZAALBAR, FALSE);
			DestroyObject(oZaalbar, 1.0, TRUE);
			DelayCommand(0.5, ShowPartySelectionGUI("k_pkas_sendking"));
		}
		else
			{
				SetNPCSelectability(NPC_ZAALBAR, FALSE);
				StartNewModule("kas_m23ad", "kas23_MeetKing");
			}
}