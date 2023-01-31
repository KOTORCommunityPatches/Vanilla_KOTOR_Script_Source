void main() {
	
	if (GetIsObjectValid(GetPartyMemberByIndex(2)) == FALSE)
		{
			SetGlobalBoolean("UNK_PARTY_DOWN", TRUE);
		}
		else
			{
				SetGlobalBoolean("UNK_PARTY_DOWN", FALSE);
			}
}