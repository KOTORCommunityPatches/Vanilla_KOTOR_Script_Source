void main() {
	
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	if (GetIsObjectValid(oPM1))
		{
			AssignCommand(oPM1, ClearAllActions());
			AssignCommand(oPM1, JumpToObject(GetObjectByTag("wp_man26ac_party01", 0), TRUE));
		}
	
	if (GetIsObjectValid(oPM2))
		{
			AssignCommand(oPM2, ClearAllActions());
			AssignCommand(oPM2, JumpToObject(GetObjectByTag("wp_man26ac_party02", 0), TRUE));
		}
}
