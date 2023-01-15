// c_other_set
/*
    Check to see if someone else's local boolean
    is set to something
    String: Tag Name, P1: Which Bool#
*/
// FAB 6/23

int StartingConditional()
{

    string sParam = GetScriptStringParameter();
    int nParam = GetScriptParameter( 1 );

    if ( GetLocalBoolean( GetObjectByTag(sParam),nParam ) ) return TRUE;

    return FALSE;

}
