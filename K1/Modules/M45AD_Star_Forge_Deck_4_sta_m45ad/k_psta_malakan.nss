void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	
	if (GetIsPC(GetEnteringObject()))
		{
			AssignCommand(oMalak, PlayAnimation(ANIMATION_LOOPING_PAUSE2, 1.0, -1.0));
			DestroyObject(OBJECT_SELF);
		}
}
