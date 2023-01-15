// a_global_fadeout
// This is a global fadeout script.
// CFA - 10/5/04
void main()
{

    // Grab the Parameter for delay.
    float nDelay = IntToFloat ( GetScriptParameter( 1 ) );

    // Grab the Parameter for delay.
    float nFadeLength = IntToFloat ( GetScriptParameter( 2 ) );

    SetGlobalFadeOut (nDelay, nFadeLength) ;

}
