void main() {
	
	object oEntering = GetEnteringObject();
	object oWP = GetNearestObjectByTag("lev40_wpairlock", oEntering, 1);
	
	if (GetTag(oEntering) == "darthmalak400")
		{
			AssignCommand(oEntering, ActionJumpToObject(oWP, 0));
			AssignCommand(oEntering, SetFacing(GetFacing(oWP)));
		}
}