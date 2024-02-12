//  a_min_one_hp
/*
    Set/unset min 1HP on a given object
    sTag    - The tag of the object to set (default OBJECT_SELF)
    iOn     - The flag for whether to set it or unset it (1 = set)
    iDelay  - The delay in seconds before the object is set
*/
//  Created By:  Tony Evans 9/14/04

void main()
{
    string sTag = GetScriptStringParameter();
    int iOn = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);

    object oTarg;
    if (sTag == "") oTarg = OBJECT_SELF;

    else oTarg = GetObjectByTag(sTag);

    DelayCommand( IntToFloat(iDelay), SetMinOneHP(oTarg, iOn) );
}
