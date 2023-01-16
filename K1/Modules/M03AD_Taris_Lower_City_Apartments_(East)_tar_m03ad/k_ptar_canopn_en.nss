void main() {
	
	object oEntering = GetEnteringObject();
	object oDoor = GetObjectByTag("tar03_freedadoor", 0);
	
	if (GetTag(oEntering) == "canderous")
		{
			AssignCommand(oDoor, ActionUnlockObject(oDoor));
		}
}
