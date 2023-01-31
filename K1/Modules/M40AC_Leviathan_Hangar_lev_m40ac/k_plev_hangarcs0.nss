void Jump_PM(string sWP, float fWait) {
	ClearAllActions();
	ActionJumpToObject(GetObjectByTag(sWP, 0));
	ActionWait(fWait);
	ActionMoveToObject(GetObjectByTag("lev40_wpflee2", 0), TRUE);
}

void main() {
	
	int nCount;
	object oNPC;
	
	SetGlobalFadeIn(0.5, 0.5);
	SetGlobalFadeOut(7.5, 0.5);
	
	nCount = 0;
	
	while (nCount < GetPartyMemberCount())
		{
			oNPC = GetPartyMemberByIndex(nCount);
			
			SetCommandable(TRUE, oNPC);
			AssignCommand(oNPC, Jump_PM("lev40_wpflee" + IntToString(nCount), nCount * 1.0));
			
			nCount++;
		}
}