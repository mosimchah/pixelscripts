#!/system/bin/sh
su
    echo "500" > /sys/devices/system/cpu/cpu0/cpufreq/sched_pixel/up_rate_limit_us
    echo "5000" > /sys/devices/system/cpu/cpu0/cpufreq/sched_pixel/down_rate_limit_us
    echo "2" > /sys/devices/system/cpu/cpu0/cpufreq/sched_pixel/down_rate_limit_scale_pow
    chmod 0644 /sys/devices/system/cpu/cpu0/cpufreq/sched_pixel/limit_frequency
    #300000 574000 738000 930000 1098000 1197000 1328000 1401000 1598000 1704000 1803000
    echo "1401000" > /sys/devices/system/cpu/cpu0/cpufreq/sched_pixel/limit_frequency
    echo "500" > /sys/devices/system/cpu/cpu4/cpufreq/sched_pixel/up_rate_limit_us
    echo "20000" > /sys/devices/system/cpu/cpu4/cpufreq/sched_pixel/down_rate_limit_us
    chmod 0644 /sys/devices/system/cpu/cpu4/cpufreq/sched_pixel/limit_frequency
    #400000 553000 696000 799000 910000 1024000 1197000 1328000 1491000 1663000 1836000 1999000 2130000 2253000
    echo "1826000" > /sys/devices/system/cpu/cpu4/cpufreq/sched_pixel/limit_frequency
    echo "500" > /sys/devices/system/cpu/cpu6/cpufreq/sched_pixel/up_rate_limit_us
    echo "20000" > /sys/devices/system/cpu/cpu6/cpufreq/sched_pixel/down_rate_limit_us
    chmod 0644 /sys/devices/system/cpu/cpu6/cpufreq/sched_pixel/limit_frequency
    #500000 851000 984000 1106000 1277000 1426000 1582000 1745000 1826000 2048000 2188000 2252000 2401000 2507000 2630000 2704000 2802000
    echo "2507000" > /sys/devices/system/cpu/cpu6/cpufreq/sched_pixel/limit_frequency

    chmod 0664 /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
    chmod 0664 /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
    chmod 0664 /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq

    echo "1704000" > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
    echo "1999000" > /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
    echo "2507000" > /sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq

    echo "bfq" > /sys/block/sda/queue/scheduler
    echo "mq-deadline" > /sys/block/sdb/queue/scheduler
    echo "mq-deadline" > /sys/block/sdc/queue/scheduler
    echo "mq-deadline" > /sys/block/sdd/queue/scheduler
    echo "100" > /proc/sys/vm/swappiness
    echo "100" > /proc/sys/vm/vfs_cache_pressure

    echo "0-7" > /dev/cpuset/top-app/cpus
    echo "0-7" > /dev/cpuset/foreground/cpus
    echo "0-7" > /dev/cpuset/background/cpus
    echo "0-7" > /dev/cpuset/system-background/cpus
    echo "0-7" > /dev/cpuset/restricted/cpus
    echo "0-7" > /dev/cpuset/camera-daemon/cpus
