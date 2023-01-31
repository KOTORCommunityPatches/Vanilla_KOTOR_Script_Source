void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	object oAnnouncer = GetObjectByTag("DuelAnnoun021", 0);
	float nDelay = 1.0;
	
	SetPartyLeader(NPC_PLAYER);
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", TRUE);
	SetGlobalLocation("TAR_DUELCUT_START1", GetLocation(oDuncan));
	SetGlobalLocation("TAR_DUELCUT_START2", GetLocation(oGerlon));
	
	DelayCommand(nDelay, AssignCommand(oDuncan, ActionJumpToObject(GetObjectByTag("tar02_wpopparena", 0), FALSE)));
	DelayCommand(nDelay, AssignCommand(oGerlon, ActionJumpToObject(GetObjectByTag("tar02_wppcarena", 0), FALSE)));
}