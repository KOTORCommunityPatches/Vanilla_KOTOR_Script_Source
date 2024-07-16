void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering))
		{
			AssignCommand(oEntering, PlayAnimation(ANIMATION_LOOPING_WORSHIP, 1.0, -1.0));
		}
}
