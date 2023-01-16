// a_global_fadein
// This is a global fade in script.
// CFA - 10/5/04
void main()
{

    // Grab the Parameter for delay.
    float nDelay = IntToFloat ( GetScriptParameter( 1 ) );

    // Grab the Parameter for delay.
    float nFadeLength = IntToFloat ( GetScriptParameter( 2 ) );

    SetGlobalFadeIn (nDelay, nFadeLength) ;

}
