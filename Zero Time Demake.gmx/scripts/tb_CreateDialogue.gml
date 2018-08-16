/// tb_CreateDialogue( x, y, width, height, skinSprite, textX, textY, startVisible );
/*
    Description:
        Initialize a new Dialogue object.
    Arguments:
        - x,y :             The position of the dialogue
        - width,height :    The dimension of the dialogue
        - skinSprite :      The skin of the dialogue
        - textX,textY :     The position inside the dialogue box to start
                            drawing the text
        - startVisible:     Weither or not to start visible
    Returns : Nothing
*/
//  --  Get arguments
    var X,Y,W,H,S,TX,TY,V;
    X = argument[0];
    Y = argument[1];
    W = argument[2];
    H = argument[3];
    S = argument[4];
    TX= argument[5];
    TY= argument[6];
    V = argument[7];
//  --  Init dialogue
    // Make invisible at start
    visible = V;
    // Create the database
    fonts = ds_map_create();
    colors = ds_map_create();
    // Set default values of database
    fonts[? "default"] = noone;
    colors[? "default"] = c_black;
    // Set the display properties of the textbox
    x = X;
    y = Y;
    width = W;
    height = H;
    skin = S;
    textX = TX;
    textY = TY;
    surface = -1;
    // Prepare message variables
    messages = ds_queue_create();
    currentMessage = noone;
    // Prepare animation settings
    textSurface = -1;
    animSpeed = 16;
    defAnimSpeed = 16;
    animPos = 0;
    lastAnimPos = -1;
    isAnimating = V;
    // Set binding for interaction
    useMouse = false;
    mAdvance = mb_left;
    mShowHide = mb_right;
    useKeyboard = true;
    kAdvance = vk_space;
    kShowHide = vk_control;
