void main() {
	
	object oDoor = GetObjectByTag("tar03_underdoor", 0);
	
	AssignCommand(oDoor, ActionUnlockObject(oDoor));
}
