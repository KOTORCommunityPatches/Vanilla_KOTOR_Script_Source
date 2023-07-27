void main() {
	
	object oAnnouncer = GetObjectByTag("DuelAnnoun021", 0);
	object oWP_Arena1 = GetObjectByTag("tar02_wpannarena1", 0);
	
	AssignCommand(oAnnouncer, SetFacing(GetFacing(oWP_Arena1)));
}
