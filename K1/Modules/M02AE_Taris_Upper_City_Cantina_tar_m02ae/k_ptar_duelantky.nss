void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	object oWP_Arena1 = GetObjectByTag("tar02_wpannarena1", 0);
	object oAnnouncer = GetObjectByTag("DuelAnnoun021", 0);
	
	SetGlobalNumber("Tar_DuelAnTk", 2);
	
	ChangeToStandardFaction(oDuncan, STANDARD_FACTION_NEUTRAL);
	ChangeToStandardFaction(oGerlon, STANDARD_FACTION_NEUTRAL);
}
