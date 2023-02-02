void SoundPlay() {
	object oSnd = GetObjectByTag("k37_snd_unsheath", 0);
	SoundObjectPlay(oSnd);
}

void SetSwordState(int nState) {
	SetGlobalNumber("KOR_SHAARDAN_SWORD", nState);
}

void main() {
	
	object oSpeaker = GetPCSpeaker();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oSword_PC = GetItemPossessedBy(oSpeaker, "k37_itm_freednf1");
	object oSword_PM1 = GetItemPossessedBy(oPM1, "k37_itm_freednf1");
	object oSword_PM2 = GetItemPossessedBy(oPM2, "k37_itm_freednf1");
	
	if (GetIsObjectValid(oSword_PC))
		{
			DestroyObject(oSword_PC);
		}
		else if (GetIsObjectValid(oSword_PM1))
			{
				DestroyObject(oSword_PM1);
			}
			else if (GetIsObjectValid(oSword_PM2))
				{
					DestroyObject(oSword_PM2);
				}
	
	SetSwordState(2);
	
	SoundPlay();
}
