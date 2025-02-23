This is a fork from https://github.com/g8kig/DX-FT8-MULTIBAND-TABLET-TRANSCEIVER
It adds CQ [A-ZZZZ] capability to DXFT8 V1.9. You can also put 1 or 2 optional free text to StationData.txt

[YourCall]:[YourGrid]:[Free Text 1]:[Free Text 2]

Free Text can be 1 to 13 characters in the range of [ 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ+-./?]

Click "Tune" and select one of [CQ] [DX] [POTA] [SOTA]
You can choose [Free Text 1] or [Free Text 2] or none.
To choose between CQ and Free Text, click the button next to Tune, originally called Rcv/Xmit.

The code supports CQ [A-ZZZZ] through free text. You can put "CQ_[A-ZZZZ] [YourCall] [YourGrid]" as one of the free texts(don't worry about its length exceed 13). Please notice there is an underscore after CQ and it's critical.

Wei AG6AQ

For more information about the DX FT8 Multiband Tablet Transceiver please use the

https://github.com/WB2CBA/DX-FT8-FT8-MULTIBAND-TABLET-TRANSCEIVER

repository.

The original sources for the transceiver firmware are stored on a shared google drive (called Katy.zip)

I was unable to build these sources. 
I held an email exchange with Charles Hill, W5BAA. 
Charley supplied me with a very useful PDF to get the sources building using the STM32 Cube IDE. 
I am using the STM32CubeIDE Version: 1.16.1

Unfortunately I was still unable to build the sources due to build errors.
These errors were due to C variables being defined in header files causing multiple definition errors at link time.
I suspect in part this is because Arduino-style C++ code has been converted to C.

The source code contains the sources to the excellent FT8 library by Karlis Goba, YL3JG.
The original repo for the ft8 library is at

https://github.com/kgoba/ft8_lib

I modified the sources to build the firmware successfully.

Paul G8KIG
