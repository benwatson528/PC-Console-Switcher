==============PC-Console Switcher==============

![Banner](Images/OIG1.jpg)

A lightweight, automated utility to seamlessly switch your Windows environment between "Desktop PC Mode" (multiple monitors) and "Console Mode" (TV with Big Picture).

==============Features==============

Seamless Switching: Toggle between PC and TV setups with a single custom controller shortcut.

Audio Routing: Automatically routes audio to your TV or Headphones based on the selected mode.

Background Operation: Runs silently in the system tray.

Automatic Wake-up: Configures your controller's USB adapter to wake the PC from sleep.

Persistence: Remembers your display configuration even when devices are disconnected.

==============Setup Instructions==============
1. Initial Configuration (Crucial)
To ensure the system works correctly, follow these steps to "teach" Windows your desired display states:

Connect all hardware: Ensure your TV and all PC monitors are plugged in and recognized by Windows in "Extend" mode.

Configure in App: Open the PC-Console Switcher, navigate to the Profiles & Audio tab, and select your TV display and audio devices from the dropdown menus.

![Image1](Images/Screenshot_3.jpg)

Save: Click "Save Settings".

Note: The app automatically disables the TV display when switching back to PC mode, so no manual Windows display configuration is needed.

2. Controller Mapping
Go to the Controller & Power tab.

Select your active controller from the list.

Click "Switch Console/PC Mode" and hold the button combination you want to use (e.g., BACK + START). The app will capture the combo automatically.

Repeat for the "Switch to Headphones" shortcut.

![Image3](Images/Screenshot_1.jpg)

Click "Save Settings".

3. Running in Background
The application starts and minimizes to the System Tray (near the Windows clock).

To restore the interface, right-click the icon in the tray and select "Show Interface".

![Image4](Images/Screenshot_2.jpg)

To exit, select "Exit" from the tray menu.

4. Windows Startup
Enable the "Run at Windows startup" checkbox in the Steam tab to ensure your switcher is always active and ready to handle your controller wake-up signals.

=============Building from Source==============
Prerequisites: Python 3.10+ and pip.

1. Clone the repository:
   git clone https://github.com/yourusername/PC-Console-Switcher.git
   cd PC-Console-Switcher

2. Install dependencies:
   pip install -r requirements.txt

3. Build the executable:
   Double-click build.bat (or run it from a terminal).

The compiled executable will be in the dist/ folder.

