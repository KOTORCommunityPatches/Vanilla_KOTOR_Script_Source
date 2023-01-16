// a_setexchfavor
// Parameter Count: 1
// Param1 = (1) = 1 pt. increment, (0) Set to Param2, (-1) = 1 pt. decrement.
// Param2 = If Param1 is "No," then this is the value that the Exchange favor is set to.
// This script adds or subtracts from the player's favor with the Exchange on Nar Shaddaa.
// When it hits 10 points or negative 10 points, then Visquis will spawn in.
// CFA 3-18-04

void main()
{

    // Use the script number to determine whether this is a simple 1 point
    // increment, or whether the Exchange favor is being set to a certain value.

    // If Param1 = 1, then it's a simple one point increment.
    int nNumber = GetScriptParameter( 1 );
    int nSetNumber = GetScriptParameter( 2 );

    // If Param1 = 1, then do a normal 1 point increment.
    if ( nNumber == 1 )
    {
        IncrementGlobalNumber ( "300NAR_Exchange_Favor", 1 );
        IncrementGlobalNumber ( "300NAR_Exchange_Gap", 1 );
    }

    // If Param1 = -1, then do a 1 point decrement.
    if ( nNumber == -1 )
    {
        IncrementGlobalNumber ( "300NAR_Exchange_Favor", -1 );
        IncrementGlobalNumber ( "300NAR_Exchange_Gap", 1 );
    }

    // If Param1 = 0, then take Parameter 2 and set it to that number.
    if ( nNumber == 0 )
    {
        SetGlobalNumber ( "300NAR_Exchange_Favor", nSetNumber);
        IncrementGlobalNumber ( "300NAR_Exchange_Gap", nSetNumber );
    }

}
