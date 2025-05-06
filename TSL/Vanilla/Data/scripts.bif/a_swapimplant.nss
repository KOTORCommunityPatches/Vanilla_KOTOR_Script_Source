/* R.Taylor 12/16/03
 * Called from within the game-code to handle implant swapping for Canderous
 */

/*
//Perform the actual swap here. It is necessary to do the DelayCommand
//to equip it, because the ActionQueue is getting cleared right after this
//script because of the X push on the player's part.
void SwapImplant(int nImplantID)
{
    switch( nImplantID ) {
        case IMPLANT_REGEN:
            {
                object oNewHide = CreateItemOnObject( "G_I_CRHIDE018",
                                                      GetFirstPC(), 1, TRUE );
                DelayCommand(0.01,
                        ActionEquipItem( oNewHide, INVENTORY_SLOT_CARMOUR ));
            }
            break;
        case IMPLANT_STR:
            {
                object oNewHide = CreateItemOnObject( "G_I_CRHIDE016",
                                                      GetFirstPC(),1, TRUE );
                DelayCommand(0.01,
                       ActionEquipItem( oNewHide, INVENTORY_SLOT_CARMOUR));
            }
            break;
        case IMPLANT_END:
            {
                object oNewHide = CreateItemOnObject( "G_I_CRHIDE017",
                                                      GetFirstPC(),1,TRUE );
                DelayCommand( 0.01,
                       ActionEquipItem( oNewHide, INVENTORY_SLOT_CARMOUR));
            }
            break;
        case IMPLANT_AGI:
            {
                object oNewHide = CreateItemOnObject( "G_I_CRHIDE014",
                                                      GetFirstPC(),1,TRUE );
                DelayCommand( 0.01,
                       ActionEquipItem( oNewHide, INVENTORY_SLOT_CARMOUR));
            }
            break;
        default:
            break;
    }
}
*/

void main()
{
    //If there is something in Canderous's CARMOR slot, then this is
    //the first time we're swapping implants. Delete that item.
    object oCurHide = GetItemInSlot( INVENTORY_SLOT_CARMOUR, OBJECT_SELF );
    if ( GetIsObjectValid( oCurHide ))
    {
        DelayCommand( 0.01, ActionUnequipItem( oCurHide ) );
        DelayCommand( 0.015, DestroyObject( oCurHide, 0.0f, FALSE, 0.0f, TRUE));
    }

    //RWT-OEI 10/07/04 - Revamping how this works to just apply and
    //remove specific effects.
    int nPrevImplant = GetGlobalNumber( "CANDEROUS_P_IMPLANT" );
    int nImplantID = GetGlobalNumber( "CANDEROUS_CUR_IMPLANT" );

    //Remove the existing implant
    switch ( nPrevImplant )
    {
        case IMPLANT_REGEN:
            {
                //Remove the regen effect
                effect eRegen = EffectRegenerate( 4, 6.0f );
                RemoveEffectByExactMatch( OBJECT_SELF, eRegen );
            }
            break;
        case IMPLANT_STR:
            {
                //Remove the strength Bonus
                effect eStr = EffectAbilityIncrease( ABILITY_STRENGTH, 4 );
                RemoveEffectByExactMatch( OBJECT_SELF, eStr );
            }
            break;
        case IMPLANT_END:
            {
                //Remove the endurance bonus
                effect eEnd = EffectAbilityIncrease( ABILITY_CONSTITUTION, 4);
                RemoveEffectByExactMatch( OBJECT_SELF, eEnd );
            }
            break;
        case IMPLANT_AGI:
            {
                //Remove the agility bonus
                effect eAgi = EffectAbilityIncrease( ABILITY_DEXTERITY, 4 );
                RemoveEffectByExactMatch( OBJECT_SELF, eAgi );
            }
            break;
    }

    //Now make the new effect
    switch ( nImplantID )
    {
        case IMPLANT_REGEN:
            {
                effect eRegen = EffectRegenerate( 4, 6.0f );
                ApplyEffectToObject( DURATION_TYPE_PERMANENT, eRegen,
                                     OBJECT_SELF );
            }
            break;
        case IMPLANT_STR:
            {
                effect eStr = EffectAbilityIncrease( ABILITY_STRENGTH, 4 );
                ApplyEffectToObject( DURATION_TYPE_PERMANENT, eStr,
                                     OBJECT_SELF );
            }
            break;
        case IMPLANT_END:
            {
                effect eEnd = EffectAbilityIncrease( ABILITY_CONSTITUTION, 4 );
                ApplyEffectToObject( DURATION_TYPE_PERMANENT, eEnd,
                                     OBJECT_SELF );
            }
            break;
        case IMPLANT_AGI:
            {
                effect eAgi = EffectAbilityIncrease( ABILITY_DEXTERITY, 4 );
                ApplyEffectToObject( DURATION_TYPE_PERMANENT, eAgi,
                                     OBJECT_SELF );
            }
            break;
    }


    /*
    //We can use OBJECT_SELF, because Canderous is passed as the 'user ID'
    //when this script is executed.
    object oCurHide = GetItemInSlot( INVENTORY_SLOT_CARMOUR, OBJECT_SELF );

    //Check what the ActionID was. This will tell us which Implant to
    //switch to.
    int nImplantID = GetGlobalNumber( "CANDEROUS_CUR_IMPLANT" );

    //First see if a hide is already equipped. If so, unequip and destroy it.
    if ( GetIsObjectValid( oCurHide ) ) {
        DelayCommand( 0.01, ActionUnequipItem( oCurHide ));
        DelayCommand( 0.015, DestroyObject( oCurHide, 0.0f, FALSE, 0.0f, TRUE ));
        DelayCommand( 0.02, SwapImplant( nImplantID ));
    } else {
        DelayCommand( 0.02, SwapImplant( nImplantID ));
    }
    */
}
