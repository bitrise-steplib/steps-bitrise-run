#!/bin/bash
set -e

echo "Configs:"
echo "- workflow_id: ${workflow_id}"
echo "- bitrise_config_path: ${bitrise_config_path}"

if [ -z ${workflow_id} ] ; then
    echo "workflow_id is not defined or empty."
    exit 1
fi

if [ -z ${bitrise_config_path} ] ; then
    echo "bitrise_config_path is not defined or empty."
    exit 1
fi

if [ ! -f ${bitrise_config_path} ] ; then
    echo "bitrise_config_path does not exist: ${bitrise_config_path}"
    exit 1
fi

bitrise run ${workflow_id} -c ${bitrise_config_path}
