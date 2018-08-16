/*
    When you use the function tb_AddMessage(), you can add tags to change the text properties.
    Here is a list of the availble tags:
----------------------------------------------------------------------------------------------------
        [c:xxx]     Color Change
----------------------------------------------------------------------------------------------------
            Description:
                Change the color of the following text.
            How to use:
                1. In the create event of your dialogue object, call the tb_DefineColor()
                   function to add colors to your dialogue.
                2. Inside the text, use the name you gived to a color to set that color.
                Ex:  tb_DefineColor( "blue", c_blue );
                     tb_AddMessage( "This is [c:blue]BLUE[c:default]!" );
            Note:
                A default color is used when no color is specified.
                By default, it is black. You can change it by using 'default' as the color name:
                    tb_DefineColor( 'default', c_white );
----------------------------------------------------------------------------------------------------                    
        [f:xxx]     Font Change
----------------------------------------------------------------------------------------------------
            Description:
                Change the font of the following text.
            How to use:
                1. In the create event of your dialogue object, call the tb_DefineFont()
                   function to add fonts to your dialogue.
                2. Inside the text, use the name you gived to a font to set that font.
                Ex:  tb_DefineFont( "arial", fnt_arial );
                     tb_AddMessage( "This is the [f:arial]Arial[f:default] font!" );
            Note:
                A default font is used when no color is specified.
                By default, it is the gamemaker font.
                You can change it by using 'default' as the font name:
                    tb_DefineFont( 'default', fnt_consolas );
*/