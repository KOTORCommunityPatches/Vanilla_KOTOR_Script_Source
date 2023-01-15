// a_takecredits
// Parameter Count: 1
// Param1 - The number of credits
// This generic script takes X amount of credits from the PC.
// CFA 1-31-04

void main()
{

    int nCredits = GetScriptParameter( 1 );

    TakeGoldFromCreature ( nCredits, GetFirstPC () );

}
