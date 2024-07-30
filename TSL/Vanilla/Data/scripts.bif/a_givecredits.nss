// a_givecredits
// Parameter Count: 1
// Param1 - The number of credits
// This generic script gives X amount of credits to the PC.
// CFA 1-31-04

void main()
{

    int nCredits = GetScriptParameter( 1 );

    GiveGoldToCreature( GetFirstPC(),nCredits );

}
