
prepare_script() 
{
    if [ -f ${PROCESS_FILE} ]; then
        rm -f ${PROCESS_FILE}
    fi
    
    echo $process_array > ${PROCESS_FILE}
    
    if [ -f ${PREBUILD_DIR}/process.sh ]; then
        rm -f ${PREBUILD_DIR}/process.sh
    fi
    cp ${LCT_SVC_PRJ_ROOT}/src/lct_rpm_tool/serve/process.sh ${PREBUILD_DIR}/
    cp ${LCT_SVC_PRJ_ROOT}/src/lct_rpm_tool/script/lct_service_prep.sh ${PREBUILD_SCRIPT_DIR}/
    cp ${LCT_SVC_PRJ_ROOT}/src/lct_rpm_tool/script/install.sh ${PREBUILD_DIR}/
    cp ${LCT_SVC_PRJ_ROOT}/src/lct_rpm_tool/script/uninstall.sh ${PREBUILD_DIR}/
    cp ${LCT_SVC_PRJ_ROOT}/src/lct_rpm_tool/script/lct_monitor.sh ${PREBUILD_SCRIPT_DIR}/
    cp ${LCT_SVC_PRJ_ROOT}/src/lct_rpm_tool/script/lct_log_rotate.sh ${PREBUILD_SCRIPT_DIR}/
    cp ${LCT_SVC_PRJ_ROOT}/src/lct_rpm_tool/script/version.sh ${PREBUILD_DIR}/
}
