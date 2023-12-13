Commodore 64 SDDM Login Theme and >> C64 Login Theme Construction Set! <<

I started working on a Commodore 64 PETSCII login theme, and it grew into a construction set that I hope other people will enjoy. I have included over 360 assets for you to mix and match to create your own themes. The assets include borders, backgrounds, avatars (sprites), text, buttons, input boxes, and more.

The only feature I was not able to include was a drag and drop GUI interface. I just don't have the time to add this...maybe later.

So, to create or modify a theme you will need to edit the file Main.qml. I tried to make it user friendly and easy to follow by putting all the settings at the start of the file. I tried to group and label them in an orderly fashion so you can quickly make changes.

Example:
Lets create a Bruce Lee Ninja theme from the C64-Classic theme.

1. Copy the C64-Classic folder to your desktop and rename it C64-Ninja
2. Open metadata.desktop in kate or your favorite text editor
3. Replace C64-Classic with C64-Ninja, and also replace my name and email with your own, save when done
4. Open Main.qml in kate or your favorite text editor

Note: I would make kate half-screen and then open Dolphin to C64-Ninja/MasterAssets to the other half so you can see both at the same time.



5. Change property string borderimage : "MasterAssets/Borders/CBMBorder-YOURCOLOR.png"
6. Chante property string backgroundimg : "MasterAssets/Backgrounds/CBMBackground-YOURCOLOR.svg"
7. Change:

    //CBM HEADER SECTION 302 x 23
    property string headertext : "MasterAssets/HeaderText/CBMHeader-YOURCOLOR.svg"
    property int headertexttoppadding : fsize * 2
    property int headertextimagewidth : 302 * defaultscale
    property int headertextimageheight : 23 * defaultscale
    property bool headervisible : true    >> SET TO FALSE FOR NO HEADER <<

8. Change property string dialogboximage : "MasterAssets/Windows/CBMWindow-LightBlue.svg" //CBMWindow-None.svg for none
9. Change property string cbmavatar : "MasterAssets/Avatars/Misc/CBMAvatar-Ninja.svg"

You get the idea...make all the changes you want.



At any point open a new terminal in the C64-Ninja directory and type the following to test your theme:

sddm-greeter --test-mode --theme . C64-Ninja

Remember it might not be accurate since it is displayed in a windows, but it is close enough.

When you are done remember to copy C64-Ninja into /usr/share/sddm/themes/
AND set C64-Ninja as the default greeter.


Enjoy!!



PS - I got tired of type sddm-greeter --test-mode --theme PATH and THEMENAME  and wrote a bash script which I included in a folder called SDDMTEST. Feel free to use it.
