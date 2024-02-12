//  a_play_anim
/*
    Make an object play an animation
    sTag    - The tag of the object to play the animation (default is GetFirstPC()
              You can pass "OBJECT_SELF" as a string to get the caller of the script)
    iAnim   - The number of the animation (see Animations.2da)
    iSpeed  - The speed of the animation (default 1.0)
    iLength - The duration of the animation (default 0.0, if -1.0 it will loop)
    iDelay  - Delay in seconds before animation begins
    iAction - 0 = PlayAnimation
              1 = ActionPlayAnimation
*/
//  Created By:  Tony Evans 10/7/04

void main()
{
    string sTag = GetScriptStringParameter();
    int iAnim = GetScriptParameter(1);
    int iSpeed = GetScriptParameter(2);
    int iLength = GetScriptParameter(3);
    int iDelay = GetScriptParameter(4);
    int iAction = GetScriptParameter(5);

    object oTarg;

    if (sTag == "") oTarg = GetFirstPC();
    else if (sTag == "OBJECT_SELF") oTarg = OBJECT_SELF;
    else oTarg = GetObjectByTag(sTag);

    if (iSpeed == 0) iSpeed = 1;

    DelayCommand( IntToFloat(iDelay), AssignCommand(oTarg, PlayAnimation
        (10000 + iAnim, IntToFloat(iSpeed), IntToFloat(iLength))));
}
