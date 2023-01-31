void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	AssignCommand(oPM0, ActionPlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 3.0));
	AssignCommand(oPM1, ActionPlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 3.0));
	AssignCommand(oPM2, ActionPlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 3.0));
}