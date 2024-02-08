//  a_face
/*
    Change the facing of a creature to a given number
    sTag - The tag of the creature (default OBJECT_SELF)
    iFacing - Direction to face (between 0 and 359)
    iFacePC - Optional parameter to face the PC (ignores iFacing)
    iInst - The Instance of the object from sTag
*/
//  Created By:  Tony Evans 9/9/04

void main()
{
    string sTag = GetScriptStringParameter();
    int iFacing = GetScriptParameter(1);
    int iFacePC = GetScriptParameter(2);
    int iInst = GetScriptParameter(3);

    if (sTag == "") sTag = GetTag(OBJECT_SELF);

    // Face the direction specified in iFacing
    if (!iFacePC) AssignCommand (GetObjectByTag(sTag, iInst), SetFacing (IntToFloat(iFacing)));

    // Face the PC
    else AssignCommand (GetObjectByTag(sTag, iInst), SetFacingPoint (GetPosition(GetFirstPC())));
}
