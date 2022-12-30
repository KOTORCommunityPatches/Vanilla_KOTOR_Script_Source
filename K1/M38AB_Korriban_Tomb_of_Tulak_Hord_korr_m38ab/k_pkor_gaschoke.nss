void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	effect eVFX = EffectVisualEffect(VFX_PRO_DROID_DISABLE);
	
	ActionPauseConversation();
	
	if (GetIsObjectValid(oPM0))
		{
			AssignCommand(oPM0, ClearAllActions());
			AssignCommand(oPM0, ActionPlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 10.0));
		}
	
	if (GetIsObjectValid(oPM1))
		{
			if (((GetTag(oPM1) != "HK47") && (GetTag(oPM1) != "T3M4")))
				{
					AssignCommand(oPM1, ClearAllActions());
					AssignCommand(oPM1, ActionPlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 10.0));
				}
			else
				{
					ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oPM1, 1.0);
				}
		}
	
	if (GetIsObjectValid(oPM2))
		{
			if (((GetTag(oPM2) != "HK47") && (GetTag(oPM2) != "T3M4")))
				{
					AssignCommand(oPM2, ClearAllActions());
					AssignCommand(oPM2, ActionPlayAnimation(ANIMATION_LOOPING_CHOKE, 1.0, 10.0));
				}
			else
				{
					ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oPM2, 1.0);
				}
		}
	
	ActionWait(3.0);
	ActionResumeConversation();
}
