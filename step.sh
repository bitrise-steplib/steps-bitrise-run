#!/bin/bash
set -ex
if [ -z ${workflow_id} ]
then
    echo "Workflow id is not defined or empty."
    exit 1
fi

if [ ! -e ${bitrise_config_path} ]
then
    echo "Bitrise config file does not exist: ${bitrise_config_path}"
    exit 1
fi

echo "Workflow id: ${workflow_id}"
echo "Bitrise config path: ${bitrise_config_path}"
bitrise run ${workflow_id} -c ${bitrise_config_path}
