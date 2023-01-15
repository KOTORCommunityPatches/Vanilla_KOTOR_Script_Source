// c_master_kreia
// DJS-OEI 9/9/2004
// This script decides whether Kreia herself or her "psychic proxy"
// explains to the player what happened when he/she absorbed the
// Master Jedis' powers.
int StartingConditional()
{
    object oRealKreia = GetObjectByTag( "kreia" );
    if( GetIsObjectValid( oRealKreia ) ) {
        return TRUE;
    }
    return FALSE;
}
