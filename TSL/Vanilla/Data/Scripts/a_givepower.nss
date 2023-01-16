// a_givepower
// Parameter Count: 1
// Param1 - The Force Power ID from Spells.2DA for the desired spell.
// This script grants the requested Force Power to the player's character
// without regard to prerequisites.
void main()
{
    int nSpellId = GetScriptParameter( 1 );
    GrantSpell( nSpellId, GetFirstPC() );
}
