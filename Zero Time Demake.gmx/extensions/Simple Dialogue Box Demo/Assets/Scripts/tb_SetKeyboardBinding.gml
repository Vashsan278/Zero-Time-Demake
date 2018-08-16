/// tb_SetKeyboardBinding( use, advance, showHide );
/*
    Description:
        Map the keyboard keys to the dialogue.
    Arguments:
        - use:      True or False, weither to use or not the keyboard
        - advance:  Key to advance in the messages
        - showHide: Key to show or hide the dialogue
    Returns: Nothing
    NOTE: By default, keyboard is enabled ( use = true )
*/
useKeyboard = argument[0];
kAdvance = argument[1];
kShowHide = argument[2];