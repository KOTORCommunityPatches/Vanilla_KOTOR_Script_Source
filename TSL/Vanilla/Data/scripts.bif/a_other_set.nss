// a_other_set
/*
    Set someone else's local boolean to something
    String: Tag Name, P1: Which #, P2: -1 not set, otherwise set
*/
// FAB 6/23

void main()
{

    string sParam = GetScriptStringParameter();
    int nParam = GetScriptParameter( 1 );
    int nParam2 = GetScriptParameter( 2 );

    int nTRUE;

    if ( nParam2 == -1 ) nTRUE = FALSE;
    else nTRUE = TRUE;

    SetLocalBoolean( GetObjectByTag(sParam),nParam,nTRUE );

}
