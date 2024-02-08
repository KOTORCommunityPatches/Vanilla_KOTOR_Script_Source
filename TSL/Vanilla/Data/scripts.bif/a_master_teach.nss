// a_master_teach
// DJS-OEI 9/10/2004
// Param1 - The Jedi Master doing the teaching.
// Param2 - A custom ID for the Form being taught.
// This plays some animations when a Jedi Master
// is teaching a Form to the player.
void main() {

    int nMaster = GetScriptParameter( 1 );
    int nForm = GetScriptParameter( 2 );
    int nAnimation = ANIMATION_LOOPING_READY;
    object oMaster = OBJECT_INVALID;
    object oDoor = OBJECT_INVALID;
    if( nMaster == 1 ) {
        // Kavar
        oMaster = GetObjectByTag( "kavar" );
        if( !GetIsObjectValid( oMaster ) ) {
            return;
        }
        switch( nForm ) {
            case 1:
            case 2:
                // Ataru - Aggressive
                nAnimation = 10136;
                break;
            case 3:
            case 4:
                // Shien - Defensive
                nAnimation = 10147;
                break;
            case 5:
            case 6:
                // Niman - Balance
                nAnimation = 10137;
                break;
            case 7:
            case 8:
                // Juyo - Very Aggressive
                nAnimation = 10139;
                break;
                /*
            case 9:
            case 10:
                // Force Potency
                break;
            case 11:
            case 12:
                // Force Affinity
                break;
            case 13:
            case 14:
                // Force Mastery
                break;
                */
        }
    }
    else if( nMaster == 2 ) {
        // Vrook's animations. He uses a two-bladed saber.
        oMaster = GetObjectByTag( "npc_vrook" );
        if( !GetIsObjectValid( oMaster ) ) {
            return;
        }
        switch( nForm ) {
            case 1:
            case 2:
                // Ataru - Aggressive
                nAnimation = 10136;
                break;
            case 3:
            case 4:
                // Shien - Defensive
                nAnimation = 10147;
                break;
            case 5:
            case 6:
                // Niman - Balance
                nAnimation = 10137;
                break;
            case 7:
            case 8:
                // Juyo - Very Aggressive
                nAnimation = 10139;
                break;
                /*
            case 9:
            case 10:
                // Force Potency
                break;
            case 11:
            case 12:
                // Force Affinity
                break;
            case 13:
            case 14:
                // Force Mastery
                break;
                */
        }

        // Turn off Area Unescapeable since we're not fighting.
        SetAreaUnescapable( FALSE );
    }
    else if( nMaster == 3 ) {
        // Zez-Kai Ell
        oMaster = GetObjectByTag( "zezkaiel" );
        if( !GetIsObjectValid( oMaster ) ) {
            return;
        }
        switch( nForm ) {
            case 1:
            case 2:
                // Ataru - Aggressive
                nAnimation = 10136;
                break;
            case 3:
            case 4:
                // Shien - Defensive
                nAnimation = 10147;
                break;
            case 5:
            case 6:
                // Niman - Balance
                nAnimation = 10137;
                break;
            case 7:
            case 8:
                // Juyo - Very Aggressive
                nAnimation = 10139;
                break;
                /*
            case 9:
            case 10:
                // Force Potency
                break;
            case 11:
            case 12:
                // Force Affinity
                break;
            case 13:
            case 14:
                // Force Mastery
                break;
                */
        }

        // Turn off Area Unescapeable since we're not fighting.
        SetAreaUnescapable( FALSE );

        // Unlock and open the secret door.
        oDoor = GetObjectByTag( "Flophouse_Secret" );
        if( GetIsObjectValid( oDoor ) ) {
            SetLocked( oDoor, FALSE );
            AssignCommand( oDoor, ActionOpenDoor( oDoor ) );
        }
    }

    if( nForm <= 8 ) {
        // Lightsaber Form is being taught.
        // If the Form ID is odd, we're in the first node of the
        // cutscene, otherwise it's the second.
        if( nForm % 2 == 1 ) {
            ActionPauseConversation();
            AssignCommand( oMaster, ClearAllActions() );
            ChangeToStandardFaction( oMaster, STANDARD_FACTION_FRIENDLY_2 );
            SetLightsaberPowered( oMaster, TRUE, TRUE, TRUE );
            SetFakeCombatState( oMaster, TRUE );
            AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) );
            DelayCommand( 1.5, AssignCommand( oMaster, PlayAnimation( nAnimation ) ) );
            DelayCommand( 3.0, AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) ) );
            DelayCommand( 4.0, ActionResumeConversation() );
        }
        else {
            ActionPauseConversation();
            AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) );
            DelayCommand( 1.5, AssignCommand( oMaster, PlayAnimation( nAnimation ) ) );
            DelayCommand( 4.0, ActionResumeConversation() );
            DelayCommand( 6.0, SetFakeCombatState( oMaster, FALSE ) );
            DelayCommand( 6.0, SetLightsaberPowered( oMaster, TRUE, FALSE, FALSE ) );
            DelayCommand( 6.0, ChangeToStandardFaction( oMaster, STANDARD_FACTION_NEUTRAL ) );
        }
    }
    else {
        // Force Form is being taught.
        // If the Form ID is odd, we're in the first node of the
        // cutscene, otherwise it's the second.
        if( nForm % 2 == 1 ) {
            AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_MEDITATE_STAND, 1.0, -1.0 ) );
        }
        else {
            effect eBeam;
            effect eVis;
            object oLightningPoint;
            switch( nForm ) {
                case 10: {
                    // Force Potency - Show some lightning.
                    eBeam = EffectBeam(2061, oMaster, BODY_NODE_HAND);
                    eVis = EffectVisualEffect(VFX_PRO_LIGHTNING_L);
                    oLightningPoint = GetObjectByTag( "LightningPoint" );

                    ActionPauseConversation();
                    AssignCommand( oMaster, PlayAnimation( 10063, 1.0, -1.0 ) );
                    DelayCommand( 0.33, ApplyEffectToObject( DURATION_TYPE_TEMPORARY, eBeam, oLightningPoint, 3.67 ) );
                    DelayCommand( 4.0, AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) ) );
                    DelayCommand( 4.0, ActionResumeConversation() );
                    break;
                }
                case 12:
                {
                    // Force Affinity - Meditate with visual effect.
                    eVis = EffectVisualEffect(1005);
                    ActionPauseConversation();
                    AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_MEDITATE_STAND, 1.0, -1.0 ) );
                    // Have to apply the effect a couple of times since it won't loop.
                    ApplyEffectToObject( DURATION_TYPE_INSTANT, eVis, oMaster );
                    DelayCommand( 1.5, ApplyEffectToObject( DURATION_TYPE_INSTANT, eVis, oMaster ) );
                    DelayCommand( 3.0, ApplyEffectToObject( DURATION_TYPE_INSTANT, eVis, oMaster ) );
                    DelayCommand( 4.0, AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) ) );
                    DelayCommand( 4.0, ActionResumeConversation() );
                    break;
                }
                case 14:
                {
                    // Force Mastery - Meditate with visual effect.
                    eVis = EffectVisualEffect(VFX_PRO_FORCE_ARMOR);
                    eVis = EffectLinkEffects(eVis, EffectVisualEffect(VFX_PRO_FORCE_SHIELD));
                    ActionPauseConversation();
                    AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_MEDITATE_STAND, 1.0, -1.0 ) );
                    // Have to apply the effect a couple of times since it won't loop.
                    ApplyEffectToObject( DURATION_TYPE_INSTANT, eVis, oMaster );
                    DelayCommand( 1.5, ApplyEffectToObject( DURATION_TYPE_INSTANT, eVis, oMaster ) );
                    DelayCommand( 3.0, ApplyEffectToObject( DURATION_TYPE_INSTANT, eVis, oMaster ) );
                    DelayCommand( 4.0, AssignCommand( oMaster, PlayAnimation( ANIMATION_LOOPING_READY, 1.0, -1.0 ) ) );
                    DelayCommand( 4.0, ActionResumeConversation() );
                    break;
                }
            }
        }
    }
}
