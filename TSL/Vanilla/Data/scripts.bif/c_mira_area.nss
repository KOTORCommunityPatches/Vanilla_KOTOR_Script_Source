// c_mira_area
// Check to see if Mira is on or off the Ebon Hawk.
// CFA: 8-21-04

int StartingConditional()
{

    // Is Mira anywhere on Nar Shaddaa?
    if ( ( GetModuleName() == "301NAR") ||
         ( GetModuleName() == "302NAR") ||
         ( GetModuleName() == "303NAR") ||
         ( GetModuleName() == "304NAR") ||
         ( GetModuleName() == "305NAR") ||
         ( GetModuleName() == "306NAR") ||
         ( GetModuleName() == "351NAR") )
    {
        return TRUE;
    }
    return FALSE;

}
