#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <iostream>
#include <chrono>
#include <thread>
#include <3ds.h>

using namespace std;

int main(int argc, char* argv[])
{
    gfxInitDefault();
    consoleInit(GFX_TOP, NULL);

    static SwkbdState swkbd;
    static char UserInput[60];
    SwkbdButton button = SWKBD_BUTTON_NONE;
    int age;

    std::cout << "\nenter your age" << endl;
    std::this_thread::sleep_for(std::chrono::milliseconds(2500));

    swkbdInit(&swkbd, SWKBD_TYPE_NUMPAD, 1, 8);
    UserInput[0] = 0;
    SwkbdResult res = swkbdGetResult(&swkbd);
    button = swkbdInputText(&swkbd, UserInput, sizeof(UserInput));
    age = std::atoi(UserInput);
    if (age == 69) {
        std::cout << "NOICE " << age << endl;
    }
    else {
        std::cout << "Your age is:" << age << endl;
    }
    // Main loop
    while (aptMainLoop())
    {

        hidScanInput();

        u32 kDown = hidKeysDown();
        if (kDown & KEY_START)
            break; 

        gfxFlushBuffers();
        gfxSwapBuffers();

        gspWaitForVBlank();

    }

    gfxExit();
    return 0;
}