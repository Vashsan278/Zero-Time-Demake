/// tb_createToken( text, font, color, ox, oy );
/*
    This enables text to have multiple color and fonts.
    Arguments:
        - text:     The text of the token
        - font:     The font of the token
        - color:    The color of the token
        - ox:       The left pixels offset from the start of the string
        - oy:       The top pixels offset from the start of the string
    Returns: The token created ( as an array )
*/
//  --  Get arguments
    var T,F,C,X,Y;
    T = argument[0];
    F = argument[1];
    C = argument[2];
    X = argument[3];
    Y = argument[4];
//  --  Create a token
    var TOK = 0;
    TOK[0] = T;
    TOK[1] = F;
    TOK[2] = C;
    TOK[3] = X;
    TOK[4] = Y;
//  --  Return the token
    return TOK;