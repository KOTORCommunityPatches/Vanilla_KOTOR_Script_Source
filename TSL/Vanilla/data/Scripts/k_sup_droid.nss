//:: k_sup_droid
/*
     Droid Ability Scripts
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void CUSTOM_GravityGen(int nSpell, int nCounter);

void main()
{
    int nSpell = GetSpellId();
    int nDC, nDamage;
    float fDuration;
    object oTarget;
    effect eBeam, eDam;

    if(nSpell == 116 || nSpell == 117) //DROID_ITEM_STUN_RAY_1 ot DROID_ITEM_STUN_RAY_2
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 116) {nDC = 15;}
        else if(nSpell == 117) {nDC = 20;}
        effect eStun = EffectStunned();
        if ( nSpell == 116)
            eStun = SetEffectIcon(eStun, 55);
        else if ( nSpell == 117 )
            eStun = SetEffectIcon(eStun, 56);
        eBeam = EffectBeam(2052, OBJECT_SELF, BODY_NODE_HAND); //Stun Ray Beam
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(!WillSave(oTarget, nDC, SAVING_THROW_TYPE_MIND_AFFECTING))
        {
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, RoundsToSeconds(3));
        }
    }
    else if(nSpell == 118 || nSpell == 119) //Disruptor Ray 1 and 2
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 118) {nDamage = 20;}
        else if(nSpell == 119) {nDamage = 40;}
        eDam = EffectDamage(nDamage, DAMAGE_TYPE_ION);
        effect eBeam1 = EffectBeam(2049, OBJECT_SELF, BODY_NODE_HAND); //Ion Beam 1
        effect eBeam2 = EffectBeam(2050, OBJECT_SELF, BODY_NODE_HAND); //Ion Beam 2
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam2, oTarget, 1.0);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam1, oTarget, 1.0);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
    }
    // FAK - OEI added 3 and 4
    else if(nSpell == 120 || nSpell == 121 || nSpell == 188 || nSpell == 189) //Flame Throw 1 and 2
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 120) {nDamage = 30; nDC = 15;}
        else if(nSpell == 121) {nDamage = 60; nDC = 20;}
        else if (nSpell == 188) {nDamage = 6; nDC = 15;}
        else if (nSpell == 189) {nDamage = 12; nDC = 15;}

        eBeam = EffectBeam(2053, OBJECT_SELF, BODY_NODE_HAND); //Flame Thrower
        effect eVFX = EffectVisualEffect(1039);
        effect eBump = EffectVisualEffect(2062);
        effect eHorror = EffectHorrified();
        //RWT-OEI 07/08/04 - Added seperate effects icons for all these.
        if ( nSpell == 120 )
            eHorror = SetEffectIcon(eHorror, 57);
        else if ( nSpell == 121 )
            eHorror = SetEffectIcon(eHorror, 58);
        else if ( nSpell == 188 )
            eHorror = SetEffectIcon(eHorror, 98);
        else if ( nSpell == 189 )
            eHorror = SetEffectIcon(eHorror, 99);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        // no horror on baby throwers
        // DJS-OEI 10/2/2004
        // Removed level 6 and under auto-horror.
        //if((nSpell < 188) && (GetHitDice(oTarget) < 7 || FortitudeSave(oTarget, 15) == FALSE))
        if((nSpell < 188) && (FortitudeSave(oTarget, 15) == FALSE))
        {
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eHorror, oTarget, 3.0);
        }
        DelayCommand(0.33, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));
        if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_FIRE))
        {
            // DJS-OEI 11/20/2003
            // If the target has the Evasion feat, the damage on a successful
            // Reflex save is 0. Otherwise, it's half the original damage.
            if( GetHasFeat( FEAT_EVASION, oTarget ) ) {
                nDamage = 0;
            }
            else {
                nDamage /= 2;
            }
        }
        eDam = EffectDamage(nDamage, DAMAGE_TYPE_FIRE);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
    }
    else if(nSpell == 122 || nSpell == 123 || nSpell == 244 || nSpell == 245 ) //Carbonite Guns
    {
        oTarget = GetSpellTargetObject();
        if(nSpell == 122) {nDamage = 20; nDC = 15; fDuration = 9.0;}
        else if(nSpell == 123) {nDamage = 40; nDC = 20; fDuration = 15.0;}
        else if (nSpell == 244) {nDamage = 5; nDC = 10; fDuration = 4.0;}
        else if (nSpell == 245) {nDamage = 10; nDC = 15; fDuration = 6.0;}
        eBeam = EffectBeam(2051, OBJECT_SELF, BODY_NODE_HAND); //Carbonite Ray
        effect eIce = EffectVisualEffect(2055);                //Ice chunks
        effect eSolid = EffectVisualEffect(2054);             //Ice Bumpout
        effect eStuck;
        if(GetRacialType(oTarget) != RACIAL_TYPE_DROID)
        {
            eStuck = EffectParalyze();
        }
        else
        {
            eStuck = EffectDroidStun();
        }

        //RWT-OEI 07/08/04 - Gave these individual effects settings so that they can be
        //distinguished in the new Effects Display on the Messages GUI.
        if ( nSpell == 122 )
            eStuck = SetEffectIcon(eStuck, 59);
        else if ( nSpell == 123 )
            eStuck = SetEffectIcon(eStuck, 100);
        else if ( nSpell == 244 )
            eStuck = SetEffectIcon(eStuck, 101);
        else if ( nSpell == 245 )
            eStuck = SetEffectIcon(eStuck, 102);


        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_COLD))
        {
            // DJS-OEI 11/20/2003
            // If the target has the Evasion feat, the damage on a successful
            // Reflex save is 0. Otherwise, it's half the original damage.
            if( GetHasFeat( FEAT_EVASION, oTarget ) ) {
                nDamage = 0;
            }
            else {
                nDamage /= 2;
            }
            fDuration = fDuration - 6.0;
        }
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSolid, oTarget, fDuration);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eIce, oTarget, fDuration);
        eDam = EffectDamage(nDamage, DAMAGE_TYPE_COLD);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStuck, oTarget, fDuration);
    }
    else if(nSpell == 124 || nSpell == 125)
    {
        CUSTOM_GravityGen(nSpell, 13);
    }
    else if( nSpell == 274 ) {    // Ion Blast Mk I

        oTarget = GetSpellTargetObject();

        // DJS-OEI 9/19/2004
        // Balance changes.
        /*
        nDamage = GetHitDice(OBJECT_SELF);
        nDC = 5 + GetHitDice(OBJECT_SELF);
        */
        nDamage = 15;
        nDC = 10;

        eBeam = EffectBeam(2051, OBJECT_SELF, BODY_NODE_HAND);
        effect eStun = EffectDroidStun();
        eStun = SetEffectIcon(eStun, 30);
        eStun = EffectLinkEffects(eStun, EffectVisualEffect(1007));  // Smoke effect

        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_ION))
        {
            // DJS-OEI 11/20/2003
            // If the target has the Evasion feat, the damage on a successful
            // Reflex save is 0. Otherwise, it's half the original damage.
            if( GetHasFeat( FEAT_EVASION, oTarget ) ) {
                nDamage = 0;
            }
            // DJS-OEI 10/17/2004
            // As per John Morgan, not having Evasion here will cause
            // full damage even though the reflex save succeeded.
            /*
            else {
                nDamage /= 2;
            }
            */
        }
        else {
            // Reflex Save failed. Apply Stun.
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eStun, oTarget, 12.0);
        }
        if( nDamage > 0 ) {
            eDam = EffectDamage(nDamage, DAMAGE_TYPE_ION);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
        }
    }
    else if( nSpell == 275 ) {    // Ion Blast Mk II

        oTarget = GetSpellTargetObject();

        // DJS-OEI 9/19/2004
        // Balance changes.
        /*
        nDamage = GetHitDice(OBJECT_SELF);
        nDC = 10 + GetHitDice(OBJECT_SELF);
        */
        nDamage = 15;
        nDC = 14;

        float fRange = 5.0;
        int nNormalDamage = nDamage;
        int nSaveDamage = nDamage/2;

        effect eDamage = EffectDamage(nNormalDamage, DAMAGE_TYPE_ION);
        effect eSaveDamage = EffectDamage(nSaveDamage, DAMAGE_TYPE_ION);

        eBeam = EffectBeam(2051, OBJECT_SELF, BODY_NODE_HAND);
        effect eDisable = EffectDroidStun();
        eDisable = EffectLinkEffects(eDisable, EffectVisualEffect(1008));
        eDisable = SetEffectIcon(eDisable, 4);

        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_ION))
        {
            // DJS-OEI 11/20/2003
            // If the target has the Evasion feat, the damage on a successful
            // Reflex save is 0. Otherwise, it's half the original damage.
            if( !GetHasFeat( FEAT_EVASION, oTarget ) ) {
                // DJS-OEI 10/17/2004
                // As per John Morgan, not having Evasion here will cause
                // full damage even though the reflex save succeeded.
                //ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage, oTarget);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
            }
        }
        else {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDisable, oTarget, 12.0);
        }

        //Start going through all hostile droids around the primary target
        object oSecond = GetFirstObjectInShape(SHAPE_SPHERE, fRange, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE );
        while(GetIsObjectValid(oSecond))
        {
            if(oSecond != oTarget && GetIsEnemy(oSecond) && GetRacialType(oSecond) == RACIAL_TYPE_DROID)
            {
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oSecond, 1.0);
                if(ReflexSave(oSecond, nDC, SAVING_THROW_TYPE_ION))
                {
                    // DJS-OEI 11/20/2003
                    // If the target has the Evasion feat, the damage on a successful
                    // Reflex save is 0. Otherwise, it's half the original damage.
                    if( !GetHasFeat( FEAT_EVASION, oSecond ) ) {
                        // DJS-OEI 10/17/2004
                        // As per John Morgan, not having Evasion here will cause
                        // full damage even though the reflex save succeeded.
                        //ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage, oSecond);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oSecond);
                    }
                }
                else {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oSecond);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDisable, oSecond, 12.0);
                }
            }
            oSecond = GetNextObjectInShape(SHAPE_SPHERE, fRange, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE );
        }
    }
    else if( nSpell == 276 ) {    // Ion Blast Mk III

        oTarget = GetSpellTargetObject();

        // DJS-OEI 9/19/2004
        // Balance changes.
        /*
        nDamage = d6( GetHitDice(OBJECT_SELF) );
        nDC = 15 + GetHitDice(OBJECT_SELF);
        */
        nDamage = 30;
        nDC = 18;

        float fRange = 6.0;
        int nNormalDamage = nDamage;
        int nSaveDamage = nDamage/2;

        effect eDamage = EffectDamage(nNormalDamage, DAMAGE_TYPE_ION);
        effect eSaveDamage = EffectDamage(nSaveDamage, DAMAGE_TYPE_ION);

        eBeam = EffectBeam(2051, OBJECT_SELF, BODY_NODE_HAND);
        effect eDisable = EffectDroidStun();
        eDisable = EffectLinkEffects(eDisable, EffectVisualEffect(1008));
        eDisable = SetEffectIcon(eDisable, 5);

        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(ReflexSave(oTarget, nDC, SAVING_THROW_TYPE_ION))
        {
            // DJS-OEI 11/20/2003
            // If the target has the Evasion feat, the damage on a successful
            // Reflex save is 0. Otherwise, it's half the original damage.
            if( !GetHasFeat( FEAT_EVASION, oTarget ) ) {
                // DJS-OEI 10/17/2004
                // As per John Morgan, not having Evasion here will cause
                // full damage even though the reflex save succeeded.
                //ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage, oTarget);
                ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
            }
        }
        else {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oTarget);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDisable, oTarget, 12.0);
        }

        //Start going through all hostile droids around the primary target
        object oSecond = GetFirstObjectInShape(SHAPE_SPHERE, fRange, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE );
        while(GetIsObjectValid(oSecond))
        {
            if(oSecond != oTarget && GetIsEnemy(oSecond) && GetRacialType(oSecond) == RACIAL_TYPE_DROID)
            {
                nNormalDamage = 30;
                nSaveDamage = nNormalDamage/2;

                eDamage = EffectDamage(nNormalDamage, DAMAGE_TYPE_ION);
                eSaveDamage = EffectDamage(nSaveDamage, DAMAGE_TYPE_ION);

                ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oSecond, 1.0);
                if(ReflexSave(oSecond, nDC, SAVING_THROW_TYPE_ION))
                {
                    // DJS-OEI 11/20/2003
                    // If the target has the Evasion feat, the damage on a successful
                    // Reflex save is 0. Otherwise, it's half the original damage.
                    if( !GetHasFeat( FEAT_EVASION, oSecond ) ) {
                        // DJS-OEI 10/17/2004
                        // As per John Morgan, not having Evasion here will cause
                        // full damage even though the reflex save succeeded.
                        //ApplyEffectToObject(DURATION_TYPE_INSTANT, eSaveDamage, oSecond);
                        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oSecond);
                    }
                }
                else {
                    ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, oSecond);
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDisable, oSecond, 12.0);
                }
            }
            oSecond = GetNextObjectInShape(SHAPE_SPHERE, fRange, GetLocation(oTarget), FALSE, OBJECT_TYPE_CREATURE );
        }
    }
    else if( nSpell == 277 ) {    // Plasma Thrower

        oTarget = GetSpellTargetObject();
//        int nFireDamage = 30;
        int nIonDamage = 60;
        nDC = 20 + GetHitDice(OBJECT_SELF);

        eBeam = EffectBeam(2069, OBJECT_SELF, BODY_NODE_HAND); //Flame Thrower
        effect eVFX = EffectVisualEffect(1049);
        //effect eBump = EffectVisualEffect(2062);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        //DelayCommand(0.33, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBump, oTarget, 1.5));
        if(FortitudeSave(oTarget, nDC))
        {
//            nFireDamage = 15;
            nIonDamage = 30;
        }
  //      eDam = EffectDamage(nFireDamage, DAMAGE_TYPE_FIRE);
        //ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
        effect eDam2 = EffectDamage(nIonDamage, DAMAGE_TYPE_ION);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam2, oTarget);

    }
    else if( nSpell == 278 ) {    // Charge Arm

        oTarget = GetSpellTargetObject();
        int nLevels = GetHitDice(OBJECT_SELF);
        if( nLevels > 10 ) {
            nLevels = 10;
        }
        int nDamage = d6( nLevels );
        nDC = 5 + GetHitDice(OBJECT_SELF);

        eBeam = EffectBeam(2066, OBJECT_SELF, BODY_NODE_HAND); // Shock beam effect.
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_LIGHTNING_S), oTarget);
        if(FortitudeSave(oTarget, nDC, SAVING_THROW_TYPE_ELECTRICAL))
        {
            nDamage = nDamage / 2;
        }
        eDam = EffectDamage(nDamage, DAMAGE_TYPE_ELECTRICAL);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
    }
    else if( nSpell == 279 ) {    // Toxin Emitter

        oTarget = GetSpellTargetObject();

        eBeam = EffectBeam(2068, OBJECT_SELF, BODY_NODE_HAND);
        effect eVFX = EffectVisualEffect(1050);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if( !GetIsPoisoned( oTarget ) ) {
            //effect ePoison = EffectPoison(POISON_ABILITY_AND_DAMAGE_AVERAGE);
            effect ePoison = EffectPoison(POISON_ABILITY_AND_DAMAGE_VIRULENT);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, ePoison, oTarget);
        }
    }
    else if( nSpell == 280 ) {    // Bio-Assault Spray
        oTarget = GetSpellTargetObject();

        eBeam = EffectBeam(2068, OBJECT_SELF, BODY_NODE_HAND);
        effect eVFX = EffectVisualEffect(1050);
        ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFX, oTarget);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if( !GetIsPoisoned( oTarget ) ) {
            effect ePoison = EffectPoison(POISON_DAMAGE_VIRULENT);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, ePoison, oTarget);
        }
    }
    else if( nSpell == 281 ) {    // Multi-spectral Emitter
        oTarget = GetSpellTargetObject();
        nDamage = 100;
        nDC = 24 + GetHitDice(OBJECT_SELF);

        eBeam = EffectBeam(VFX_BEAM_DEATH_FIELD_TENTACLE, OBJECT_SELF, BODY_NODE_HAND);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eBeam, oTarget, 1.0);
        if(ReflexSave(oTarget, nDC))
        {
            // DJS-OEI 11/20/2003
            // If the target has the Evasion feat, the damage on a successful
            // Reflex save is 0. Otherwise, it's half the original damage.
            if( GetHasFeat( FEAT_EVASION, oTarget ) ) {
                nDamage = 0;
            }
            else {
                nDamage /= 2;
            }
        }
        if( nDamage > 0 ) {
            eDam = EffectDamage(nDamage, DAMAGE_TYPE_BLASTER);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget);
        }
    }
}

void CUSTOM_GravityGen(int nSpell, int nCounter)
{
    int nDC;
    object oTarget;
    if(nSpell == 124) {nDC = 15;}
    else if(nSpell == 125) {nDC = 20;}

    effect eVis = EffectVisualEffect(3013);//Gravity Generator FNF;
    effect eVis2 = EffectVisualEffect(3018);// More Better Gravity Generator FNF;
    //Start Link
    effect eSpeed = EffectMovementSpeedDecrease(75);
    effect eAC = EffectACDecrease(4);
    effect eSlow = EffectLinkEffects(eSpeed, eAC);
    //effect eLink = EffectLinkEffects(eSpeed, eAC);
    //eLink = EffectLinkEffects(eLink, eSlow);

    //RWT-OEI 07/08/04 - Added unique effecticons.2da rows for each varient so they can be distinguished on
    //the new Effects printout on the messages GUI.
    if ( nSpell == 124 )
        eSlow = SetEffectIcon(eSlow, 61);
    else if ( nSpell == 125 )
        eSlow = SetEffectIcon(eSlow, 103);

    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis, OBJECT_SELF);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eVis2, OBJECT_SELF);
    oTarget = GetFirstObjectInShape(SHAPE_SPHERE, 15.0, GetLocation(OBJECT_SELF));
    while(GetIsObjectValid(oTarget))
    {
        if(GetIsEnemy(oTarget))
        {
            if(!ReflexSave(oTarget, nDC))
            {
                if(!GetHasSpellEffect(124) && !GetHasSpellEffect(125))
                {
                    ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eSlow, oTarget, 9.0);
                }
            }
        }
        oTarget = GetNextObjectInShape(SHAPE_SPHERE, 15.0, GetLocation(OBJECT_SELF));
    }
    /*
    if(nCounter >= 3 && GetIsObjectValid(OBJECT_SELF))
    {
        nCounter = nCounter - 3;
        float fDelay = 12.0 - IntToFloat(nCounter);
        DelayCommand(fDelay, CUSTOM_GravityGen(nSpell, nCounter));
    }
    */
}
