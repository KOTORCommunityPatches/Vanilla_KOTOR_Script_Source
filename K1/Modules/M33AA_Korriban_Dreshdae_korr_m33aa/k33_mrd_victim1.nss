#include "k_inc_debug"

void main() {
	
	ActionPauseConversation();
	
	object oVictim1 = GetObjectByTag("kor33b_victim1", 0);
	vector vVictim1 = GetPosition(oVictim1);
	
	SetFacingPoint(vVictim1);
	AssignCommand(oVictim1, PlayAnimation(ANIMATION_LOOPING_TALK_PLEADING, 1.0, 2.0));
	ActionCastFakeSpellAtObject(FORCE_POWER_DRAIN_LIFE, oVictim1);
	
	effect efBeam = EffectBeam(VFX_BEAM_DRAIN_LIFE, OBJECT_SELF, BODY_NODE_HAND);
	effect efDrain = EffectVisualEffect(VFX_PRO_DRAIN);
	effect efDeath = EffectDeath();
	
	DelayCommand(1.1, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efBeam, oVictim1, 1.0));
	DelayCommand(1.2, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efDrain, oVictim1, 1.0));
	
	object oDrainSFX = GetObjectByTag("k33a_snd_drnvic", 0);
	object oScreamSFX = GetObjectByTag("k33a_snd_vicscrm", 0);
	
	DelayCommand(1.1, SoundObjectPlay(oDrainSFX));
	DelayCommand(1.25, SoundObjectPlay(oScreamSFX));
	DelayCommand(1.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, efDeath, oVictim1));
	
	ActionWait(1.0);
	ActionDoCommand(Db_PostString("Murder done", 10, 10, 5.0));
	ActionResumeConversation();
}
