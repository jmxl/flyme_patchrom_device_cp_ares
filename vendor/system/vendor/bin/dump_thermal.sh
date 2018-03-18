#!/system/bin/sh

# COMMENT
# This script is written for junk service to dump the device's temperature state.
# SENSOR : ALIAS
# tsens_tz_sensor6 : cpu1
# tsens_tz_sensor4 : cpu0
# tsens_tz_sensor1 : pop_mem
# tsens_tz_sensor15 : gpu
# tsens_tz_sensor11 : cpu3
# tsens_tz_sensor9 : cpu2
# xo_therm_buf : skin
# battery : battery
# tsens_tz_sensor14 : gpu

THERMAL_DIR="/sys/devices/virtual/thermal"
sensor_name=""

cpu0=0
cpu1=1
cpu2=2
cpu3=3
battery=4
skin=5
gpu=6

if [ -d ${THERMAL_DIR} ]
then
    echo
    echo "Dump of TSENS sensors temperature"
    echo "---------------------------------"
    for d in `ls ${THERMAL_DIR}`
    do
        if [ "${d:0:7}" = "thermal" ]
        then
            if [ -d ${THERMAL_DIR}/${d} ]
            then
                sensor_temp=`cat ${THERMAL_DIR}/${d}/temp`
                sensor_type=`cat ${THERMAL_DIR}/${d}/type`

                case ${sensor_type} in
                "tsens_tz_sensor4")
                    sensor_name="cpu0"
                    temp[${cpu0}]=${sensor_temp:0:2}"."${sensor_temp:2}
                ;;
                "tsens_tz_sensor6")
                    sensor_name="cpu1"
                    temp[${cpu1}]=${sensor_temp:0:2}"."${sensor_temp:2}
                ;;
                "tsens_tz_sensor9")
                    sensor_name="cpu2"
                    temp[${cpu2}]=${sensor_temp:0:2}"."${sensor_temp:2}
                ;;
                "tsens_tz_sensor11")
                    sensor_name="cpu3"
                    temp[${cpu3}]=${sensor_temp:0:2}"."${sensor_temp:2}
                ;;
                "battery")
                    sensor_name="battery"
                    temp[${battery}]=${sensor_temp:0:2}"."${sensor_temp:2:1}
                ;;
                "xo_therm_buf")
                    sensor_name="skin"
                    temp[${skin}]=${sensor_temp}".0"
                ;;
                "tsens_tz_sensor14")
                    sensor_name="gpu"
                    temp[${gpu}]=${sensor_temp:0:2}"."${sensor_temp:2}
                ;;
                esac
                #echo ${sensor_type}":"${sensor_name}":"${sensor_temp}
                sensor_name=""
            fi
        fi
    done
fi

echo -n "CPU      {"${temp[${cpu0}]}"  "${temp[${cpu1}]}"  "${temp[${cpu2}]}"  "${temp[${cpu3}]}"}    "
echo    "GPU   {"${temp[${gpu}]}"}"
echo -n "BATTERY  {"${temp[${battery}]}"}                      SKIN  {"${temp[${battery}]}"}"
echo
