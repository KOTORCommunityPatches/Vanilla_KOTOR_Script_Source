//  a_flourish
/*
    Causes a creature to flourish its weapon
    sTag - The tag of the creature (default OBJECT_SELF)
*/
//  Created By:  Tony Evans 8/18/04

void main()
{
    string sTag = GetScriptStringParameter();

    if (sTag == "") sTag = GetTag(OBJECT_SELF);

    CreatureFlourishWeapon(GetObjectByTag(sTag));
}
