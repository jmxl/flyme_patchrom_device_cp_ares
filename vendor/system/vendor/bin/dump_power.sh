#!/system/bin/sh

POWER_SUPPLY_DIR="/sys/class/power_supply"
if [ -d ${POWER_SUPPLY_DIR} ]
then
    echo
    echo "---------------------------------"
    echo "Dump /sys/class/power_supply"
    for d in `ls ${POWER_SUPPLY_DIR}`
    do
        path=${POWER_SUPPLY_DIR}/${d}
        for f in `ls ${path}`
        do
            filename=${path}/${f}
            if [ -f ${filename} ]
            then
                value=`cat ${filename}`
                echo ""${filename}":"${value}""
            fi
        done
    done
fi


