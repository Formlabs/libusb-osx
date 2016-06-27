Building libusb 1.0.20 with patch for PreForm
---------------------------------------------

This recipe patches libusb to reenumerate devices correctly on reset.
This makes DFU flashing work in preform.

```
brew install --build-bottle --build-from-source libusb.rb
```

Then, copy the contents of /usr/local/Cellar/libusb/1.0.20 into this repository.

Finally, fixup the install_name of the dylib as follows:

```
install_name_tool -id "@executable_path/../Resources/Plugins/libusb-1.0.0.dylib" libusb-1.0.0.dylib
install_name_tool -id "@executable_path/../Resources/Plugins/libusb-1.0.dylib" libusb-1.0.dylib
```

