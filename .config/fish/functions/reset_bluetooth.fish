function reset_bluetooth
	printf "Turning bluetooth off. May return errors. \n"
	sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport
	printf "Turning bluetooth back on. \n"
	sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport
end
