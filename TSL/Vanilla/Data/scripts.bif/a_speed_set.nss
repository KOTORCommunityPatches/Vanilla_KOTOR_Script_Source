// Sets speed of sString to be Param1 % of norm for Param2 seconds.
// If Param2 is 0, then the change is permanent.
//
// Example: Param1 = 50 => speed reduced to 50% of normal
//          Param1 = 125 => speed increased to 125% of normal
//
// kds, 09/13/04

void main()
{
    int nChange = GetScriptParameter (1) - 100;
    int nDuration = GetScriptParameter (2);
    float fDuration = IntToFloat(nDuration);

    string sString = GetScriptStringParameter();
    object oObject = GetObjectByTag(sString);

    effect eEffect;

    if(nChange < 0)
        eEffect = EffectMovementSpeedDecrease(-nChange);
        else eEffect = EffectMovementSpeedIncrease(nChange);


    if(nDuration != 0) ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect, oObject, fDuration);
    else ApplyEffectToObject(DURATION_TYPE_PERMANENT, eEffect, oObject);

}
