// c_area_ebonhawk
// Check to see if subject is on or off the Ebon Hawk.
// CFA: 8-21-04

int StartingConditional()
{

    // Is subject on any of the Ebon Hawks?
    if ( ( GetModuleName() == "001EBO") ||
         ( GetModuleName() == "002EBO") ||
         ( GetModuleName() == "003EBO") ||
         ( GetModuleName() == "004EBO") ||
         ( GetModuleName() == "005EBO") ||
         ( GetModuleName() == "006EBO") ||
         ( GetModuleName() == "007EBO") )
    {
        return TRUE;
    }
    return FALSE;

}
