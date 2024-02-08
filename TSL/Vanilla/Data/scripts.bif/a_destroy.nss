/*  a_destroy

    Destroy an object.
    iDelay - Number of seconds to wait
    sTag - The Tag of the object to destroy

    Created TDE 7/28/04
*/

void main()
{
    int iDelay = GetScriptParameter(1);
    string sTag = GetScriptStringParameter();

    // Make it so the object can be destroyed, in case it was set to not be destroyable
    AssignCommand(GetObjectByTag( sTag ), SetIsDestroyable(TRUE,TRUE,TRUE));

    DelayCommand( IntToFloat( iDelay ),DestroyObject( GetObjectByTag( sTag ) ) );
}
