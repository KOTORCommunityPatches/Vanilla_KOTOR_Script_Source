//Checks to see if Bao-Dur fell to the Dark Side or defeated it on Dxun.
//
//1 - Light Side
//2 - Light Side
//
//MHC 8/21/2004
int StartingConditional()
{
    //Make sure it was Bao-Dur
    if( !GetGlobalNumber( "411DXN_Tempt_NPC" ) == 1 ) return FALSE;

    int nParam = GetScriptParameter( 1 );

    //Light Side
    if( nParam == GetGlobalNumber( "411DXN_Tempt" ) )
    {
        return TRUE;
    }

    else return FALSE;
}
