Building libusb 1.0.20 with patch for PreForm
---------------------------------------------

This recipe patches libusb to reenumerate devices correctly on reset.
This makes DFU flashing work in preform.

```
brew install --build-from-source libusb.rb
```

Then, copy the contents of /usr/local/Cellar/libusb/1.0.20 into this repository.

