//based on https://github.com/devkitPro/3ds-examples/tree/master/graphics/gpu/2d_shapes
//(public domain)

#include <citro2d.h>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>


#define SCREEN_WIDTH  320
#define SCREEN_HEIGHT 240

int main(int argc, char* argv[]) {
	// Init libs
	gfxInitDefault();
	C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);
	C2D_Init(C2D_DEFAULT_MAX_OBJECTS);
	C2D_Prepare();
	consoleInit(GFX_TOP, NULL);

	// Create screens
	C3D_RenderTarget* top = C2D_CreateScreenTarget(GFX_BOTTOM, GFX_LEFT);

	// Create colors
	u32 clrWhite = C2D_Color32(0xFF, 0xFF, 0xFF, 0xFF);
	u32 clrBlack = C2D_Color32(0x00, 0x00, 0x00, 0xFF);
	
	
	//UGH so i was gonna have citra's fake software keyboard launch here 
	//BUT ITS REAL BROKEN IN HOMEBREW APPS
	//SO NOW THIS ENTIRE APP IS PRETTY POINLESS, HUH!
	//i'll keep it around on the off-chance that I can get it to work.
	
	//u32 aptbuf[0x400/4];
	//aptLaunchLibraryApplet(APPID_SOFTWARE_KEYBOARD, aptbuf, sizeof(aptbuf), 0);

	// Main loop
	while (aptMainLoop())
	{
		hidScanInput();

		// Respond to user input
		u32 kDown = hidKeysDown();
		if (kDown & KEY_START)
			break; // break in order to return to hbmenu
		printf("\x1b[1;1HCalibrate Citra input locations");
		printf("\x1b[2;1HPress enter (M) to quit.");
		printf("\x1b[4;1Hbased on devkitPro/3ds-examples");

		// Render the scene
		C3D_FrameBegin(C3D_FRAME_SYNCDRAW);
		C2D_TargetClear(top, clrBlack);
		C2D_SceneBegin(top);


		C2D_DrawRectSolid(0,0,0,4,64,clrWhite);
		C2D_DrawRectSolid(0,0,0,64,4,clrWhite);
		
		C2D_DrawRectSolid(SCREEN_WIDTH,SCREEN_HEIGHT,0,-4,-64,clrWhite);
		C2D_DrawRectSolid(SCREEN_WIDTH,SCREEN_HEIGHT,0,-64,-4,clrWhite);
		
		C3D_FrameEnd(0);
	}

	// Deinit libs
	C2D_Fini();
	C3D_Fini();
	gfxExit();
	return 0;
}
