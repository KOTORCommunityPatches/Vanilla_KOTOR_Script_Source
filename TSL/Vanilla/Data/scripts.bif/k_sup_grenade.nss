//:: k_sup_grenade
/*
    Grenade Support Script
    for all of the grenades in
    the game
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.


// March 1, 2004 FAK - OEI added support for hostile placeables to be affected by nades
#include "k_inc_debug"
#include "k_inc_force"

//Get the DC for the grenade based on the targets feats.
int GR_GetGrenadeDC(object oTarget);

void main()
{
    int nSpell = GetSpellId();
    int nDamage;
    int nDC;
    int nDCCheck;
    object oTarget;
    int nVFX;
    int nFeat = GetHasFeat(FEAT_WEAPON_SPECIALIZATION_GRENADE);
    int nUnc1 = GetHasFeat(FEAT_UNCANNY_DODGE_1);
    int nUnc2 = GetHasFeat(FEAT_UNCANNY_DODGE_2);

    if(nFeat == TRUE)
    {
        nFeat = 6;
    }
    if((nSpell == 87) || (nSpell == 246)) //Fragmentation Grenade (Normal and Launched)
    {
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3003;
        nDamage = 20 + nFeat;
        nDC = 15;

        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_NONE))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
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
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_PIERCING), oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 88) || (nSpell == 247)) //Stun Grenade (Normal and Launched)
    {
        nVFX = 3004;
        nDC = 15;

        effect eStun = EffectStunned();
        effect eDroidStun = EffectDroidStun();
        eStun = SetEffectIcon(eStun, 41);
        eStun = EffectLinkEffects(eStun, EffectVisualEffect(VFX_IMP_STUN));

        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!WillSave(oTarget, nDCCheck, SAVING_THROW_TYPE_SONIC))
                {
                    if(GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                    {
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDroidStun, oTarget, 9.0);
                    }
                    else
                    {
                        if(!GetIsLinkImmune(oTarget, eStun))
                        {
                           ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, 9.0);
                        }
                    }
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 89) || (nSpell == 248)) // Thermal Detonator (Normal and Launched)
    {
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3005;
        nDamage = 60 + nFeat;
        nDC = 15;
        effect ePush = EffectForcePushTargeted(GetSpellTargetLocation());

        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_BLASTER))
                {
                    DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_BLASTER), oTarget));
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
                    DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_BLASTER), oTarget));
                }
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePush, oTarget, 0.1);
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 90) || (nSpell == 249)) // Poison Grenade (Normal and Launched)
    {
        nVFX = 3006;
        effect ePoison = EffectPoison(POISON_DAMAGE_AVERAGE);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        while(GetIsObjectValid(oTarget) && GetRacialType(oTarget) != RACIAL_TYPE_DROID)
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!GetIsPoisoned(oTarget))
                {
                    ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation());
        }
    }
    else if((nSpell == 91) || (nSpell == 250)) // Sonic Grenade (Normal and Launched)
    {
        nVFX = 3007;
        nDamage = 20 + nFeat;
        nDC = 15;
        effect eDex = EffectAbilityDecrease(ABILITY_DEXTERITY, 6);
        eDex = SetEffectIcon(eDex, 41);
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!WillSave(oTarget, nDCCheck, SAVING_THROW_TYPE_SONIC))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_SONIC), oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 30.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_SONIC), oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 186) || (nSpell == 187) || (nSpell == 255) || (nSpell == 256)) // Sonic Grenade 2 and 3 (Normal and Launched)
    {
        nVFX = 3007;
        effect eDex;
        if ((nSpell == 187) || (nSpell == 256))
        {
            nDamage = 12 + nFeat;
            nDC = 15;
            eDex = EffectAbilityDecrease(ABILITY_DEXTERITY, 4);
        }
        else
        {
            nDamage = 6 + nFeat;
            nDC = 15;
            eDex = EffectAbilityDecrease(ABILITY_DEXTERITY, 2);
        }
        eDex = SetEffectIcon(eDex, 41);
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!WillSave(oTarget, nDCCheck, SAVING_THROW_TYPE_SONIC))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_SONIC), oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 30.0);
                }
                else
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage/2, DAMAGE_TYPE_SONIC), oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 92) || (nSpell == 251)) // Adhesive Grenade (Normal and Launched)
    {
        nVFX = 3008;
        effect eDex = EffectEntangle();
        eDex = SetEffectIcon(eDex, 43);
        effect eGoo = EffectVisualEffect(1038);

        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!GetIsLinkImmune(oTarget, eDex) || GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 15.0);
                    DelayCommand(0.8, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eGoo, GetLocation(oTarget)));
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 93) || (nSpell == 252)) // Cryoban Grenade (Normal and Launched)
    {
        nVFX = 3009;
        nDamage = 20 + nFeat;
        nDC = 15;

        effect eDex = EffectParalyze();
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_COLD))
                {
                    if(!GetIsLinkImmune(oTarget, eDex) || GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                    {
                        eDex = SetEffectIcon(eDex, 44);
                        //Need a cold duration effect for this.
                        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDex, oTarget, 6.0);
                    }
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_COLD), oTarget);
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
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_COLD), oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 94) || (nSpell == 253)) // Plasma Grenade (Normal and Launched)
    {
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3010;
        nDamage = 36 + nFeat;
        nDC = 15;

        effect eHorror = EffectHorrified();
        effect eFlame = EffectVisualEffect(VFX_IMP_FLAME);
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_FIRE))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_FIRE), oTarget);
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eFlame, oTarget);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHorror, oTarget, 2.0);
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
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_FIRE), oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    else if((nSpell == 95) || (nSpell == 254)) // Ion Grenade (Normal and Launched)
    {
        nVFX = 3011;
        nDamage = 15 + nFeat;
        int nRealDamage;
        nDC = 15;

        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            nDamage = 15 + nFeat;
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                nDCCheck = nDC;
                nDCCheck -= GR_GetGrenadeDC(oTarget);
                if(GetRacialType(oTarget) == RACIAL_TYPE_DROID)
                {
                    nDamage += 30;
                }
                if(!ReflexSave(oTarget, nDCCheck, SAVING_THROW_TYPE_ION))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_ION), oTarget);
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
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_ION), oTarget);
                }
            }
            nRealDamage = nDamage;
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    // DJS-OEI 2/9/2004
    else if( nSpell == 185 ) {  // Explosive Rocket

        // Damage: Piercing, 10 (single target)
        // 10 piercing damage is applied to single target.  DC 15 Reflex save avoids all damage.
        // Secondary: Piercing, 24 (area effect)
        // 24 piercing damage is applied to all targets in area of effect (4m).  DC 15 Reflex save avoids 1/2 damage.
        // Area of Effect: 4 meters
        // Range: Long

        oTarget = GetSpellTargetObject();
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3005;

        // Apply the base damage to the initial target.
        nDamage = 10;
        nDC = 15;
        if(!GetIsNeutral(oTarget)) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
            }
        }

        // Apply the secondary damage to those in the area of effect.
        nDamage = 24;
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
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
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_PIERCING), oTarget);
                }
            }
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 190 ) {  // Buster Rocket

        // Damage: Piercing, 50
        // 50 piercing damage is applied to single target. DC 15 Reflex save avoids half damage.
        // Range: Long
        oTarget = GetSpellTargetObject();
        nVFX = 3005;

        // Apply the base damage to the target.
        nDamage = 50;
        nDC = 15;
        if(!GetIsNeutral(oTarget)) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
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
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_PIERCING), oTarget);
            }
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 191 ) {  // Poison Rocket

        // Damage: Piercing, 10
        // 10 piercing damage is applied to single target.  DC 15 Reflex save avoids all damage.
        // Secondary: Poison, 5pts every 6sec
        // Duration: 12sec
        // Poison is applied to all targets in area of effect (4m).  DC 25 Fortitude save avoids entire Poison effect.
        // Area of Effect: 4m
        // Range: Long

        oTarget = GetSpellTargetObject();
        nVFX = 3006;

        // Apply the base damage to the target.
        nDamage = 10;
        nDC = 15;
        if(!GetIsNeutral(oTarget)) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
            }
        }

        // Apply the secondary damage to those in the area of effect.
        // The poison saving throw is handled in the code. The DC is
        // set in Poison.2DA.
        effect ePoison = EffectPoison(POISON_DAMAGE_ROCKET);
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget) && (GetRacialType(oTarget) != RACIAL_TYPE_DROID) )
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!GetIsPoisoned(oTarget))
                {
                    ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 192 ) {  // Ion Rocket

        // Damage: Piercing, 10
        // 10 piercing damage is applied to single target.  DC 15 Reflex save avoids all damage.
        // Secondary: Ion, 48pts
        // 48 ion damage is applied to all targets in area of effect (4m).  DC 15 Reflex save avoids 1/2 damage.
        // Area of Effect: 4m
        // Range: Long

        oTarget = GetSpellTargetObject();
        nVFX = 3011;

        // Apply the base damage to the target.
        nDamage = 10;
        nDC = 15;
        if(!GetIsNeutral(oTarget)) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
            }
        }

        // Apply the secondary damage to those in the area of effect.
        nDamage = 48;
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_ION), oTarget);
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
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_ION), oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 193 ) {  // Plasma Rocket

        // Damage: Piercing, 10
        // 10 piercing damage is applied to single target.  DC 15 Reflex save avoids all damage.
        // Secondary: Heat, 36pts
        // 36 heat damage is applied to all targets in area of effect (4m).  DC 15 Reflex save avoids 1/2 damage.
        // Area of Effect: 4m
        // Range: Long

        oTarget = GetSpellTargetObject();
        ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1044),GetSpellTargetLocation());
        nVFX = 3010;

        // Apply the base damage to the target.
        nDamage = 10;
        nDC = 15;
        if(!GetIsNeutral(oTarget)) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
            }
        }

        // Apply the secondary damage to those in the area of effect.
        nDamage = 36;
        //oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
        oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        while(GetIsObjectValid(oTarget))
        {
            if(!GetIsNeutral(oTarget))
            {
                SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
                if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
                {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_FIRE), oTarget);
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
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nApply, DAMAGE_TYPE_FIRE), oTarget);
                }
            }
            //oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE, 65);
            oTarget = GetNextObjectInShape(SHAPE_SPHERE, 4.0, GetSpellTargetLocation(), FALSE);
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 194 ) {  // Concussion Rocket
        // Damage: 1 (yes, only 1)
        // 1 blunt damage is applied to single target.
        // Secondary: Knock Down & Stun for 9sec
        // Knock Down and Stun is applied to single target.  DC 15 Reflex save avoids both effects.
        // Range: Long
        // Save: DC15 for no effect

        oTarget = GetSpellTargetObject();

        // Apply the base damage to the target.
        nDamage = 1;
        nDC = 15;
        if(!GetIsNeutral(oTarget) ) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_BLUDGEONING), oTarget);

                effect eKnockback = EffectForcePushed();
                effect eStun = EffectStunned();
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eKnockback, oTarget, 0.1);
                DelayCommand(2.55, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, 9.0));
            }
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 195 ) {  // Poison Dart

        // Damage: Piercing, 1
        // 1 piercing damage is applied to single target.
        // Secondary: Poison, 10pts every 6sec
        // Poison is applied to single target.  DC 25 Fortitude save avoids Poison effect.
        // Duration: 18sec
        // Range: Short
        // Save: DC25 for no effect

        oTarget = GetSpellTargetObject();

        // Apply the base damage to the target.
        nDamage = 1;
        if(!GetIsNeutral(oTarget) ) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);

            if( !GetIsPoisoned(oTarget) && ( GetRacialType(oTarget) != RACIAL_TYPE_DROID ) ) {
                effect ePoison = EffectPoison( POISON_DAMAGE_NORMAL_DART );
                ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
            }
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 196 ) {  // Kyber Dart

        // Damage: Piercing, 1
        // 1 piercing damage is applied to single target.
        // Secondary: Poison, 25pts every 6sec
        // Poison is applied to single target.  DC 25 Fortitude save halves Poison effect.
        // Duration: 18sec
        // Range: Short
        // Save: DC25 for half damage

        oTarget = GetSpellTargetObject();

        // Apply the base damage to the target.
        nDamage = 1;
        nDC = 25;
        if(!GetIsNeutral(oTarget) ) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);

            if(!FortitudeSave(oTarget, nDC, SAVING_THROW_TYPE_POISON))
            {
                if( !GetIsPoisoned(oTarget) && ( GetRacialType(oTarget) != RACIAL_TYPE_DROID ) ) {
                    effect ePoison = EffectPoison( POISON_DAMAGE_KYBER_DART );
                    ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
                }
            }
            else {
                if( !GetIsPoisoned(oTarget) && ( GetRacialType(oTarget) != RACIAL_TYPE_DROID ) ) {
                    effect ePoison = EffectPoison( POISON_DAMAGE_KYBER_DART_HALF );
                    ApplyEffectToObject(DURATION_TYPE_PERMANENT, ePoison, oTarget);
                }
            }
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 197 ) {  // Paralysis Dart

        // Damage: Piercing, 1
        // 1 piercing damage is applied to single target.
        // Secondary: Paralysis
        // Paralysis is applied to single target.  DC 20 Fortitude save avoids Paralysis effect but applies Slow effect.
        // Duration: 9sec
        // Range: Short
        // Save: DC20 for Slow for 3sec

        oTarget = GetSpellTargetObject();

        // Apply the base damage to the target.
        nDamage = 1;
        nDC = 20;
        if(!GetIsNeutral(oTarget) ) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);

            if(!FortitudeSave(oTarget, nDC, SAVING_THROW_TYPE_PARALYSIS))
            {
                if( GetRacialType(oTarget) != RACIAL_TYPE_DROID ) {
                    effect eParalysis = EffectParalyze();
                    eParalysis = SetEffectIcon(eParalysis, 44);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eParalysis, oTarget, 9.0);
                }
            }
            else {
                if( GetRacialType(oTarget) != RACIAL_TYPE_DROID ) {
                    // Slow effect stuff stolen from k_inc_force.
                    effect eSlow = EffectMovementSpeedDecrease(50);
                    eSlow = EffectLinkEffects(eSlow, EffectACDecrease(2));
                    eSlow = EffectLinkEffects(eSlow, EffectAttackDecrease(2));
                    eSlow = EffectLinkEffects(eSlow, EffectSavingThrowDecrease(SAVING_THROW_REFLEX,2));

                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSlow, oTarget, 3.0);
                }
            }
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 198 ) {  // Tranquilizer Dart

        // Damage: Piercing, 1
        // 1 piercing damage is applied to single target.
        // Secondary: Stun
        // Stun is applied to single target.  DC 20 Fortitude save avoids Stun effect.
        // Duration: 9sec
        // Range: Short
        // Save: DC20 for no effect

        oTarget = GetSpellTargetObject();

        // Apply the base damage to the target.
        nDamage = 1;
        nDC = 20;
        if(!GetIsNeutral(oTarget) ) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);

            if(!FortitudeSave(oTarget, nDC, SAVING_THROW_TYPE_PARALYSIS))
            {
                if( GetRacialType(oTarget) != RACIAL_TYPE_DROID ) {
                    effect eStun = EffectStunned();
                    eStun = SetEffectIcon(eStun, 41);
                    eStun = EffectLinkEffects(eStun, EffectVisualEffect(VFX_IMP_STUN));

                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, 9.0);
                }
            }
        }
    }
    // DJS-OEI 4/12/2004
    else if( nSpell == 199 ) {  // Lawn Dart

        // Damage: Piercing, 50
        // 50 piercing damage is applied to single target.  DC 10 Reflex save avoids all damage.
        // Range: Medium
        // Save: DC10 for no effect

        oTarget = GetSpellTargetObject();

        // Apply the base damage to the target.
        nDamage = 50;
        nDC = 10;
        if(!GetIsNeutral(oTarget) ) {
            SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), SWFP_HARMFUL));

            if(!ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_NONE))
            {
                ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nDamage, DAMAGE_TYPE_PIERCING), oTarget);
            }
        }
    }

    ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(nVFX),GetSpellTargetLocation());
}

//Get the DC for the grenade based on the targets feats.
int GR_GetGrenadeDC(object oTarget)
{
    int nUnc1 = GetHasFeat(FEAT_UNCANNY_DODGE_1, oTarget);
    int nUnc2 = GetHasFeat(FEAT_UNCANNY_DODGE_2, oTarget);
    int nDC = 0;
    if(nUnc1 == TRUE)
    {
        nDC += 2;
        if(nUnc2 == TRUE)
        {
            nDC += 2;
        }
    }
    return nDC;
}
