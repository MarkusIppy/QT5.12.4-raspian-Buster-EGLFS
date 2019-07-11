# QT5.12.4-raspian-Buster-EGLFS  !!!!BROKEN!!!! see QT bug https://bugreports.qt.io/browse/QTBUG-76889
Compile QT 5.12.4 on raspbian Buster and EGLFS support


Automated installation scripts to compile QT5 on Raspbian Buster  for Raspberry PI with EGLFS support This whole process takes about 4-6 The script is based on this tutorial 
http://www.tal.org/tutorials/building-qt-58-raspberry-pi-debian-stretch

The resulting image will work on any pi including Pi4 . For compiling you need minumum a Pi2 

Usage : Download raspbian Buster Lite from: https://www.raspberrypi.org/downloads/raspbian/ and install it on your SD card (the lite version will be enough)

After booting up your PI, follw the steps below :

If you use a pi with less then 2 GB ram then you will need to increase the swap file size 

Increase Rpi's swap size. As root, edit the file /etc/dphys-swapfile and modify the variable CONF_SWAPSIZE

CONF_SWAPSIZE=2048
Run dphys-swapfile setup which will create and initialize the file.

$ sudo dphys-swapfile swapon
Source : https://wpitchoune.net/tricks/raspberry_pi3_increase_swap_size.html

After increasing the swap size,

$ sudo raspi-config
Set GPU to 256 and enable ssh (ssh is optional)

$ sudo apt-get update

$ sudo apt-get install git

$ git clone https://github.com/MarkusIppy/QT5.12.4-raspian-Buster-EGLFS

$ cd QT5.12.4-raspian-Buster-EGLFS

$ sudo chmod +x compileQT.sh

$ ./compileQT.sh



```
Configure summary:

Building on: linux-g++ (arm, CPU features: <none>)
Building for: devices/linux-rasp-pi3-vc4-g++ (arm, CPU features: neon)
Target compiler: gcc 8.3.0
Configuration: cross_compile enable_new_dtags largefile neon shared rpath release c++11 c++14 c++1z concurrent dbus reduce_exports stl
Build options:
  Mode ................................... release
  Optimize release build for size ........ no
  Building shared libraries .............. yes
  Using C standard ....................... C11
  Using C++ standard ..................... C++1z
  Using ccache ........................... no
  Using gold linker ...................... no
  Using new DTAGS ........................ yes
  Using precompiled headers .............. no
  Using LTCG ............................. no
  Target compiler supports:
    NEON ................................. yes
  Build parts ............................ libs
Qt modules and options:
  Qt Concurrent .......................... yes
  Qt D-Bus ............................... yes
  Qt D-Bus directly linked to libdbus .... no
  Qt Gui ................................. yes
  Qt Network ............................. yes
  Qt Sql ................................. yes
  Qt Testlib ............................. yes
  Qt Widgets ............................. yes
  Qt Xml ................................. yes
Support enabled for:
  Using pkg-config ....................... yes
  udev ................................... no
  Using system zlib ...................... yes
Qt Core:
  DoubleConversion ....................... yes
    Using system DoubleConversion ........ no
  GLib ................................... yes
  iconv .................................. yes
  ICU .................................... no
  Tracing backend ........................ <none>
  Logging backends:
    journald ............................. no
    syslog ............................... no
    slog2 ................................ no
  Using system PCRE2 ..................... no
Qt Network:
  getifaddrs() ........................... yes
  IPv6 ifname ............................ yes
  libproxy ............................... no
  Linux AF_NETLINK ....................... yes
  OpenSSL ................................ no
    Qt directly linked to OpenSSL ........ no
  OpenSSL 1.1 ............................ no
  DTLS ................................... no
  SCTP ................................... no
  Use system proxies ..................... yes
Qt Gui:
  Accessibility .......................... yes
  FreeType ............................... yes
    Using system FreeType ................ yes
  HarfBuzz ............................... yes
    Using system HarfBuzz ................ no
  Fontconfig ............................. no
  Image formats:
    GIF .................................. yes
    ICO .................................. yes
    JPEG ................................. yes
      Using system libjpeg ............... no
    PNG .................................. yes
      Using system libpng ................ yes
  EGL .................................... yes
  OpenVG ................................. no
  OpenGL:
    Desktop OpenGL ....................... no
    OpenGL ES 2.0 ........................ yes
    OpenGL ES 3.0 ........................ yes
    OpenGL ES 3.1 ........................ yes
    OpenGL ES 3.2 ........................ yes
  Vulkan ................................. no
  Session Management ..................... yes
Features used by QPA backends:
  evdev .................................. yes
  libinput ............................... no
  INTEGRITY HID .......................... no
  mtdev .................................. no
  tslib .................................. no
  xkbcommon .............................. no
  X11 specific:
    XLib ................................. yes
    XCB Xlib ............................. yes
    EGL on X11 ........................... yes
QPA backends:
  DirectFB ............................... no
  EGLFS .................................. yes
  EGLFS details:
    EGLFS OpenWFD ........................ no
    EGLFS i.Mx6 .......................... no
    EGLFS i.Mx6 Wayland .................. no
    EGLFS RCAR ........................... no
    EGLFS EGLDevice ...................... yes
    EGLFS GBM ............................ yes
    EGLFS VSP2 ........................... no
    EGLFS Mali ........................... no
    EGLFS Raspberry Pi ................... no
    EGLFS X11 ............................ yes
  LinuxFB ................................ yes
  VNC .................................... yes
  Mir client ............................. no
Qt Sql:
  SQL item models ........................ yes
Qt Widgets:
  GTK+ ................................... no
  Styles ................................. Fusion Windows
Qt PrintSupport:
  CUPS ................................... no
Qt Sql Drivers:
  DB2 (IBM) .............................. no
  InterBase .............................. no
  MySql .................................. no
  OCI (Oracle) ........................... no
  ODBC ................................... no
  PostgreSQL ............................. no
  SQLite2 ................................ no
  SQLite ................................. yes
    Using system provided SQLite ......... no
  TDS (Sybase) ........................... no
Qt Testlib:
  Tester for item models ................. yes
Qt SerialBus:
  Socket CAN ............................. yes
  Socket CAN FD .......................... yes
Further Image Formats:
  JasPer ................................. no
  MNG .................................... no
  TIFF ................................... yes
    Using system libtiff ................. no
  WEBP ................................... yes
    Using system libwebp ................. no
Qt QML:
  QML network support .................... yes
  QML debugging and profiling support .... yes
  QML sequence object .................... yes
  QML list model ......................... yes
  QML XML http request ................... yes
  QML Locale ............................. yes
  QML delegate model ..................... yes
Qt Quick:
  Direct3D 12 ............................ no
  AnimatedImage item ..................... yes
  Canvas item ............................ yes
  Support for Qt Quick Designer .......... yes
  Flipable item .......................... yes
  GridView item .......................... yes
  ListView item .......................... yes
  TableView item ......................... yes
  Path support ........................... yes
  PathView item .......................... yes
  Positioner items ....................... yes
  Repeater item .......................... yes
  ShaderEffect item ...................... yes
  Sprite item ............................ yes
Qt Scxml:
  ECMAScript data model for QtScxml ...... yes
Qt Gamepad:
  SDL2 ................................... no
Qt 3D:
  Assimp ................................. yes
  System Assimp .......................... no
  Output Qt3D Job traces ................. no
  Output Qt3D GL traces .................. no
  Use SSE2 instructions .................. no
  Use AVX2 instructions .................. no
  Aspects:
    Render aspect ........................ yes
    Input aspect ......................... yes
    Logic aspect ......................... yes
    Animation aspect ..................... yes
    Extras aspect ........................ yes
Qt 3D Renderers:
  OpenGL Renderer ........................ yes
Qt 3D GeometryLoaders:
  Autodesk FBX ........................... no
Qt Bluetooth:
  BlueZ .................................. yes
  BlueZ Low Energy ....................... yes
  Linux Crypto API ....................... yes
  WinRT Bluetooth API (desktop & UWP) .... no
Qt Sensors:
  sensorfw ............................... no
Qt Quick Controls 2:
  Styles ................................. Default Fusion Imagine Material Universal
Qt Quick Templates 2:
  Hover support .......................... yes
  Multi-touch support .................... yes
Qt Positioning:
  Gypsy GPS Daemon ....................... no
  WinRT Geolocation API .................. no
Qt Location:
  Qt.labs.location experimental QML plugin . yes
  Geoservice plugins:
    OpenStreetMap ........................ yes
    HERE ................................. yes
    Esri ................................. yes
    Mapbox ............................... yes
    MapboxGL ............................. yes
    Itemsoverlay ......................... yes
QtXmlPatterns:
  XML schema support ..................... yes
Qt Multimedia:
  ALSA ................................... yes
  GStreamer 1.0 .......................... yes
  GStreamer 0.10 ......................... no
  Video for Linux ........................ yes
  OpenAL ................................. no
  PulseAudio ............................. yes
  Resource Policy (libresourceqt5) ....... no
  Windows Audio Services ................. no
  DirectShow ............................. no
  Windows Media Foundation ............... no
Qt Tools:
  QDoc ................................... no

Note: Also available for Linux: linux-clang linux-icc

WARNING: QDoc will not be compiled, probably because libclang could not be located. This means that you cannot build the Qt documentation.

Either ensure that llvm-config is in your PATH environment variable, or set LLVM_INSTALL_DIR to the location of your llvm installation.
On Linux systems, you may be able to install libclang by installing the libclang-dev or libclang-devel package, depending on your distribution.
On macOS, you can use Homebrew's llvm package.
On Windows, you must set LLVM_INSTALL_DIR to the installation path.

ERROR: Feature 'ssl' was enabled, but the pre-condition 'config.winrt || features.securetransport || features.openssl' failed.

ERROR: Feature 'fontconfig' was enabled, but the pre-condition '!config.msvc && features.system-freetype && libs.fontconfig' failed.
```
