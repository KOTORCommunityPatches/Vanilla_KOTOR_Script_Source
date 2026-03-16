void main()
{
    int saveAdjust = GetScriptParameter( 1 );
    ModifyReflexSavingThrowBase( GetFirstPC(), saveAdjust );
}
