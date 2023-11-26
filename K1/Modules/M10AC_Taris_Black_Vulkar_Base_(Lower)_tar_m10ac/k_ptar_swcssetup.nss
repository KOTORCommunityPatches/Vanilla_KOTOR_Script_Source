// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oVulk;
	int nCnt;
	
	ExecuteScript("k_act_com32", OBJECT_SELF);
	
	nCnt = 0;

	while (GetIsObjectValid(oVulk = GetObjectByTag("tar10_swoopguard", nCnt)))
		{
			ChangeToStandardFaction(oVulk, STANDARD_FACTION_NEUTRAL);
			nCnt++;
		}
	
	oVulk = GetObjectByTag("tar10_vulkguard", 0);
	ChangeToStandardFaction(oVulk, STANDARD_FACTION_NEUTRAL);
	AssignCommand(oVulk, ActionJumpToObject(GetObjectByTag("tar10_swoopcs2", 0)));
	
	oVulk = GetObjectByTag("tar10_vulkguard", 1);
	ChangeToStandardFaction(oVulk, STANDARD_FACTION_NEUTRAL);
	AssignCommand(oVulk, ActionJumpToObject(GetObjectByTag("tar10_swoopcs2", 0)));
	
	oVulk = GetObjectByTag("tar10_garagehead", 0);
	ChangeToStandardFaction(oVulk, STANDARD_FACTION_NEUTRAL);
	AssignCommand(oVulk, ActionJumpToObject(GetObjectByTag("tar10_swoopcs2", 0)));
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}
