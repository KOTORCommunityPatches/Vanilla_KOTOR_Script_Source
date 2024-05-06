void main()
{
    // find position of nearby baddies (faction != own)
    // if in the area of effect, then lightning bolt them
    // every second.
    int SWFP_DAMAGE_TYPE;
    int SWFP_DAMAGE_VFX;
    object  oTarget;
    int     nDamage = 4;
    effect eBeam = EffectBeam(2061, OBJECT_SELF, BODY_NODE_HEAD);
    effect eVis = EffectVisualEffect(VFX_PRO_LIGHTNING_L);
    SWFP_DAMAGE_VFX = VFX_PRO_LIGHTNING_L; //1036 - With sound
    float fLightningDuration = 1.0;

    effect eLightning = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, OBJECT_SELF, BODY_NODE_HAND);

    location locMe = GetLocation(OBJECT_SELF);

    oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 8.0, locMe, TRUE);
    while(GetIsObjectValid(oTarget) )
    {
 //       if(!GetFactionEqual(oTarget, OBJECT_SELF))
       if(!IsStealthed(oTarget) && IsRunning(oTarget) && !GetFactionEqual(oTarget, OBJECT_SELF) && HasLineOfSight(GetPosition(OBJECT_SELF), GetPosition(oTarget), OBJECT_SELF, oTarget))
       {
            if(!ReflexSave(oTarget, 15, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL), oTarget);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLightning, oTarget, fLightningDuration);
            }
            else
            {
                int nApply;
                // DJS-OEI 11/20/2003
                // If the target has the Evasion feat, the damage on a successful
                // Reflex save is 0. Otherwise, it's half the original damage.
                if( GetHasFeat( FEAT_EVASION, oTarget ) ) {
                    nApply = 0;
                }
                else {
                    nApply = nDamage / 2;
                }
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_ELECTRICAL), oTarget);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, oTarget);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eLightning, oTarget, fLightningDuration);
           }

        }
        oTarget = GetNextObjectInShape(SHAPE_SPHERE, 8.0, locMe, TRUE);
   }
}
