#!/bin/bash

brew install --build-from-source libusb.rb
cp -r /usr/local/Cellar/libusb/1.0.20/lib/* ../lib/
install_name_tool -id "@rpath/libusb-1.0.0.dylib" ../lib/libusb-1.0.0.dylib
install_name_tool -id "@rpath/libusb-1.0.dylib" ../lib/libusb-1.0.dylib
