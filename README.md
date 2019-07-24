This header file sets the `AppUserModel_ID` and the `AppUserModel_ToastActivatorCLSID` as file properties on a specified existing shortcut with the purpose to enable toast notifications. The registry key needs to be set manually like seen in the demo (but thats not difficult in comparison to the rest).

The CLSID is a GUID that should be totally unique for a software version. You maybe also need to set the CLSID in the code that you use to create toast notifications.

C++-Implementations:
* [Snoretoast](https://github.com/KDE/snoretoast/blob/master/src/linkhelper.cpp#L69)
* [VeraCrypt-Setup](https://github.com/PKRoma/VeraCrypt/blob/0eed3cc4c36282a79d9b1116ec942107bc23e8b2/src/Setup/Setup.c#L504)
* [Microsoft Demo](https://docs.microsoft.com/en-us/windows/win32/shell/enable-desktop-toast-with-appusermodelid#step-2-create-the-shortcut-and-install-it-in-the-start-screen)

NSIS Implementation:
====================
This headerfile sets the properties using the `System` plugin (which is shipped with the installer by default). This removes the need to call an external setup routine during install for setting the shortcut properties.

The system plugin is pretty low-level and poorly documented. Because of this, even more effort was put into documenting this headerfile.
