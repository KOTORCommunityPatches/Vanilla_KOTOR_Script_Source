//will fire a local script called:
// 'k_post_master'

void main()
{
    //fires a local script in the module in case there is something that needs to happen after the jedi master battle
    int nParam = GetScriptParameter( 1 );
    switch(nParam)
    {
        case 1://checking for early out
        {
            if(!GetGlobalBoolean("000_Master_Kreia"))
            {
                AurPostString("exiting a_local_fire, not time yet", 5,16,20.0);
                return;
            }
        }break;
        case 2:
        {
        }break;
        default:
        {
            AurPostString("ERROR: with jedi master killing/learning script", 5,15,20.0);
        }break;
    }
    AurPostString("Executing local script: k_post_master", 5,15,20.0);
    ExecuteScript("k_post_master", GetFirstPC());
}
