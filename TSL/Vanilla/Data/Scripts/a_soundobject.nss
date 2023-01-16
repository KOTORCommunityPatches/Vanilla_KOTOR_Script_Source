/*  a_soundobject

    Play/Stop a sound object
    sTag    - The Tag of the sound object
    iStop   - 0 = Play, 1 = Stop
    iDelay  - Delay before playing/stopping
    iFade   - Number of seconds to fade before stopping

    Created TDE 9/30/04
*/

void main()
{
    string sTag = GetScriptStringParameter();
    int iStop = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);
    int iFade = GetScriptParameter(3);

    if (iStop)
        DelayCommand( IntToFloat( iDelay ), SoundObjectFadeAndStop( GetObjectByTag( sTag ), IntToFloat( iFade ) ) );
    else
        DelayCommand( IntToFloat( iDelay ), SoundObjectPlay( GetObjectByTag( sTag ) ) );
}
