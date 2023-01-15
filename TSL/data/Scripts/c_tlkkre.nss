// c_tlkkre
//
// This checks to see if the player has talked to Kreia.
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Talk_Kreia");
    if( iResult == 0 ) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
