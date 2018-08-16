/*
    NOTE:   When I tell you to call a script, you can open the script
          itself to view its documentation.
            I tried my best to comment the description, arguments and
          returned value of all the script you should use. If there
          is no documentation, it may be because you shouldn't use
          that script.
    1.  Create a new object. This will be your dialogue box.
        You only need one dialogue object per 'skin' you want.
    2.  Add a "Create Event".
        2.1 - You have to first call the script tb_CreateDialogue()
        2.2 - You can then optionally call tb_SetMouseBinding() and tb_SetKeyboardBinding()
                ( By default, mouse is disabled, and keyboard keys are vk_space and vk_control )
        2.3 - You can also optionally call tb_DefineFont() and tb_DefineColor()
    3.  Next, add a "Step > Step Event" , and call tb_UpdateDialogue() in it.
    4. Then, add a "Draw > Draw Event", and call tb_DrawDialogue() in it.
    That's it!
    Now, you have to add message to your text box.
    There is 2 ways of doing so:
    Method 1:
        When you want to add messages, you need the ID of your object.
        Let's say the id is in a var called 'dialogue'.
        You have to go inside the object and call tb_AddMessage, for example:
        with( dialogue )
        {
            tb_AddMessage( "my message here" );
        }
    Method 2:
        You can also add message before the game start in the creation code of your object.
        Just place the dialogue object in the room, then open it's creation code.
        You can then directly call tb_AddMessage().
    In any case, you can refer to the object already created called 'obj_demo_dialogue'
    to see how to use it.
*/
