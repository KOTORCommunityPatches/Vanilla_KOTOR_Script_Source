void main() {
	
	string sSuit = "man28_envirosuit";
	object oUsed = GetLastUsedBy();
	
	if (IsObjectPartyMember(oUsed) || GetIsPC(oUsed))
		{
			object oSuit;
			object oPM;
			int nCreate;
			int nCnt;
			int nPty = GetPartyMemberCount();
			
			nCnt = 0;
			
			while (nCnt < nPty)
				{
					oPM = GetPartyMemberByIndex(nCnt);
					oSuit = GetItemPossessedBy(oPM, sSuit);
					
					if (GetIsObjectValid(oSuit) == FALSE)
						{
							CreateItemOnObject(sSuit, oPM, 1);
							nCreate = TRUE;
						}
					
					nCnt++;
				}
			
			if (nCreate)
				{
					SetPlotFlag(OBJECT_SELF, FALSE);
					DestroyObject(OBJECT_SELF);
				}
		}
}
