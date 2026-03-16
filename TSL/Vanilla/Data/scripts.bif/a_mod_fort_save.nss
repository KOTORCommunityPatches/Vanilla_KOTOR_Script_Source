void main()
{
    int saveAdjust = GetScriptParameter( 1 );
    ModifyFortitudeSavingThrowBase( GetFirstPC(), saveAdjust );
}
