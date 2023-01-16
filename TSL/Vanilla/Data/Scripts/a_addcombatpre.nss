// a_addcombatpre
// Add the combat precognition power to the player in the battle with the
// Handmaiden.
// CFA 8-30-04

void main()
{
    //178	FORCE_POWER_PRECOGNITION
    //179	FORCE_POWER_BATTLE_PRECOGNITION

    //GrantSpell ( 178, GetFirstPC() );
    GrantSpell ( 179, GetFirstPC() );   // BMA-OEI 9/29/2004

}
