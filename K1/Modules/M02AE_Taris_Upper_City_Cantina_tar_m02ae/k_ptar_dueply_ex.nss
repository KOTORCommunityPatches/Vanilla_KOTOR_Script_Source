void main() {
	
	object oExiting = GetExitingObject();
	
	if (GetIsPC(oExiting))
		{
			SetGlobalBoolean("TAR_DUELINPROGRESS", FALSE);
			SetMinOneHP(oExiting, FALSE);
		}
}
