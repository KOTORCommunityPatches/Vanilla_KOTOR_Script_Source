// c_chksed
// This checks to see if the player knows about the sedative poisoning of the miners in the medical bay.
// CFA 2-25-04

int StartingConditional()
{

    int iResult;

    iResult = GetGlobalNumber("101PER_Know_Sedatives");
    if( iResult == 0 ) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
