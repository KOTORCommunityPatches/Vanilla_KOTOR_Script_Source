void PlayKillVFX(string sTag, float fDist, int nKill) {
	object oObject = GetObjectByTag(sTag, 0);
	
	if (GetIsObjectValid(oObject))
		{
			effect efExplode = EffectVisualEffect(VFX_FNF_GRENADE_ION);
			effect efLightningA = EffectVisualEffect(VFX_PRO_LIGHTNING_L);
			effect efLightningB = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, oObject, BODY_NODE_CHEST);
			effect efDeath;
			object oNearest = GetNearestObject(OBJECT_TYPE_CREATURE, oObject, 1);
			int nCount = 1;
			int nDamage = 1000;
			float fDelay = 0.3;
			
			AssignCommand(oObject, ActionPlayAnimation(ANIMATION_PLACEABLE_OPEN));
			
			DelayCommand(0.3, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, efExplode, GetLocation(oObject)));
			
			while (GetIsObjectValid(oNearest) && GetDistanceBetween(oNearest, oObject) <= fDist)
				{
					if (nKill == TRUE || GetIsEnemy(oNearest, GetFirstPC()))
						{
							efDeath = EffectDamage(nDamage, DAMAGE_TYPE_UNIVERSAL, 0);
							DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, efDeath, oNearest, 0.0));
							
							efDeath = EffectDeath();
							DelayCommand((fDelay + 0.1), ApplyEffectToObject(DURATION_TYPE_INSTANT, efDeath, oNearest));
							
							DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLightningB, oNearest, 1.0));
							DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, efLightningA, oNearest, 1.0));
							
							fDelay = fDelay + 0.17;
						}
					
					nCount++;
					
					oNearest = GetNearestObject(OBJECT_TYPE_CREATURE, oObject, nCount);
				}
			
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DROID_KILL, 0), oObject);
		}
}

void main() {
	
	ActionPauseConversation();
	
	DelayCommand(1.0, PlayKillVFX("unk41_pillar1", 20.0, TRUE));
	DelayCommand(1.0, PlayKillVFX("unk41_pillar2", 20.0, TRUE));
	DelayCommand(1.0, PlayKillVFX("unk41_pillar3", 20.0, TRUE));
	DelayCommand(1.0, PlayKillVFX("unk41_pillar4", 20.0, TRUE));
	DelayCommand(1.0, PlayKillVFX("unk41_pillar5", 20.0, TRUE));
	DelayCommand(1.0, PlayKillVFX("unk41_pillar6", 20.0, TRUE));
	
	ActionWait(1.0);
	ActionResumeConversation();
}
