//  a_destroy_self
/*
    Destroy the object calling this script.

    Warning:    Only use this script after any conversation or inventory
                commands have completed. You can use it on a container's
                OnClose script, or as the ending script for a conversation.
*/
//  Created By:  Tony Evans 9/9/04

void main()
{
    DestroyObject(OBJECT_SELF, 0.0, TRUE);
}
