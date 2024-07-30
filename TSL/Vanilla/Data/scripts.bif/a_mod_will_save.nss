void main()
{
    int saveAdjust = GetScriptParameter( 1 );
    ModifyWillSavingThrowBase( GetFirstPC(), saveAdjust );
}
