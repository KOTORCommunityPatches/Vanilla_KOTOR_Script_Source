// a_givefeat
// Parameter Count: 1
// Param1 - The Feat Id from Feat.2DA for the desired feat.
// This script grants the requested feat to the player's character
// without regard to prerequisites.
void main()
{
    int nFeatId = GetScriptParameter( 1 );
    GrantFeat( nFeatId, GetFirstPC() );
}
