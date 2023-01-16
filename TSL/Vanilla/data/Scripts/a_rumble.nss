//  a_rumble
/*
    Shakes the screen and rumbles the xbox controller, and optionally plays a sound object
    iRumble  - 0 = Rumble
               1 = Stop Rumbling
    iLength  - Length of time to Rumble
    iInterval- The delay time between Rumbles (0 = Rumble only once)
    iRandomL - Random number to add to Length
    iRandomI - Random number to add to Interval
    sSound   - Optional tag of the sound object to play
*/
//  Created By:  Tony Evans 10/6/04

void Rumble(int iLength, int iInterval, int iRandomL, int iRandomI, string sSound)
{
    if (GetLocalBoolean(OBJECT_SELF, 20))
    {
        if (iInterval > 0)
        {
            DelayCommand(IntToFloat(Random(iRandomI) + iInterval), Rumble(iLength, iInterval, iRandomL, iRandomI, sSound));
        }
        AurPostString("Rumbling", 5, 5, 5.0);

        SoundObjectPlay( GetObjectByTag( sSound ) );

        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE),
            GetFirstPC(), IntToFloat(Random(iRandomL) + iLength));
    }
}

void main()
{
    int iRumble = GetScriptParameter(1);
    int iLength = GetScriptParameter(2);
    int iInterval = GetScriptParameter(3);
    int iRandomL = GetScriptParameter(4);
    int iRandomI = GetScriptParameter(5);
    string sSound = GetScriptStringParameter();

    if (iRumble == 0)
    {
        Rumble(iLength, iInterval, iRandomL, iRandomI, sSound);
        SetLocalBoolean(GetFirstPC(), 20, TRUE);
    }
    else SetLocalBoolean(GetFirstPC(), 20, FALSE);
}

