# pixelscripts

Easy download link: https://github.com/mosimchah/pixelscripts/archive/refs/heads/main.zip

These are the power-saving and performance scripts I made for the Pixel 6, although other devices can make some use of them

I modified the `sched-pixel` CPU governor without changing the governor, this way people using other governors won't have issues

The "b" at the end of some of the scripts indicates a lower max frequency for the CPU has been set but everything else is the same as the other script in the folder without the "b" ("lagfest-b" is just "lagfest" with lower max frequencies set)

The stock script is just the stock settings from the pixel6 (taken from the latest release), you can use this script to undo all changes from the other scripts (or just reboot to undo the changes, nothing here survives a reboot), use stock-b if you just want the stock settings with a slightly lower max CPU frequency which can save a lot of power

The performance script is just the stock script but with all tasks being assigned to every CPU core, this makes background and foreground tasks finish a lot faster (OTA updates, for example, run in the background and take forever to complete on stock)

The balance script is where the real changes are, a lower CPU max frequency is applied and there are changes made to the `sched_pixel` governor to make it more geared to battery life without causing an annoying amount of lag, `vfs_cache_pressure` has been set to 50 (vs 100 on stock), this saves some power

The balance-cpuset script is just the balance script with one change to not allow foreground tasks and the camera daemon to run on the x1 cores (the prime CPU cluster), this alone can save a lot of power

The powersave script takes the balance-cpuset script and lowers the max frequencies even more and makes the `sched_pixel` governor even more biased for battery life, and sets the I/O scheduler to none (aka noop), this reduces I/O overhead and saves some small amount of power, although the power saving is probably very slight in most cases, this can cause reduced I/O speeds, although it's still more than fast enough on the Pixel 6, this script can cause some annoying lags

The lagfest script takes the powersave-b script and lowers the max frequencies even more and makes the `sched_pixel` governor even more biased for battery life, it also sets swappiness to 0 to use zram less, this should save some power, lagfest, however, ruins race-to-idle and should only be used if you're not doing any CPU intensive tasks, it can be a nice script to use if you're looking for major power-savings and are only doing light tasks like reading an ebook, this script will almost certainly cause annoying lags (hence the name)
