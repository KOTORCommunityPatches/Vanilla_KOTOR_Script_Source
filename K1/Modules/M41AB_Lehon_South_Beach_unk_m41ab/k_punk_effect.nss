void main() {
	
	effect efLight01 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_pillar1", 0), BODY_NODE_HEAD);
	effect efLight02 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_pillar2", 0), BODY_NODE_HEAD);
	effect efLight03 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_pillar3", 0), BODY_NODE_HEAD);
	effect efLight04 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_pillar4", 0), BODY_NODE_HEAD);
	effect efLight05 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_pillar5", 0), BODY_NODE_HEAD);
	effect efLight06 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_pillar6", 0), BODY_NODE_HEAD);
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight01, GetObjectByTag("unk41_pillar6", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight01, GetObjectByTag("unk41_pillar2", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight02, GetObjectByTag("unk41_pillar1", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight02, GetObjectByTag("unk41_pillar3", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight03, GetObjectByTag("unk41_pillar2", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight04, GetObjectByTag("unk41_pillar5", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight05, GetObjectByTag("unk41_pillar4", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight05, GetObjectByTag("unk41_pillar6", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight06, GetObjectByTag("unk41_pillar1", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight06, GetObjectByTag("unk41_pillar5", 0));
	
	effect efLight07 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_dpillar1", 0), BODY_NODE_HEAD);
	effect efLight08 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_dpillar2", 0), BODY_NODE_HEAD);
	effect efLight09 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_dpillar3", 0), BODY_NODE_HEAD);
	effect efLight10 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_dpillar4", 0), BODY_NODE_HEAD);
	effect efLight11 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_dpillar5", 0), BODY_NODE_HEAD);
	effect efLight12 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, GetObjectByTag("unk41_dpillar6", 0), BODY_NODE_HEAD);
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight07, GetObjectByTag("unk41_dpillar2", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight08, GetObjectByTag("unk41_dpillar3", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight09, GetObjectByTag("unk41_dpillar4", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight10, GetObjectByTag("invisd1", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight11, GetObjectByTag("invisd2", 0));
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efLight12, GetObjectByTag("unk41_dpillar5", 0));
	
	DestroyObject(OBJECT_SELF);
}
