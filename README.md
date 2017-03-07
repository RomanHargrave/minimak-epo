Minimak Esperanto kang. Requires a keyboard with an LSGT key (or change it yourself).

I maintain this configuration specifically for my own setup. For this reason I stripped out the reams of crap found in the default epo config.
Here are details:

* Esperanto diacritics are Level3-shifted on their base counterparts (e.g. s -> ŝ)
* I only use minimak-4, but the others should work
* Level3 shift is LSGT. Most US (read: ANSI) keyboards _do not_ have LSGT keys. I have 122-key ISO keyboard, and a 107-key ISO keyboard. I don't use the ANSI keyboards in my collection.
* Dollar sign on four, but you can change that.

Installation
------------

First, make backup copies the originals of these files:

~~~
/usr/share/X11/xkb/rules/evdev.lst
/usr/share/X11/xkb/rules/evdev.xml
~~~

Then open a shell and run the following commands:

~~~
cd minimak/linux
sudo cp evdev.lst /usr/share/X11/xkb/rules/
sudo cp evdev.xml /usr/share/X11/xkb/rules/
~~~

Finally backup the symbols file for your locale, then
copy the local file to the symbols directory:

~~~
sudo cp epo /usr/share/X11/xkb/symbols/
~~~

