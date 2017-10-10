#!/bin/bash
set -ex
echo "Workflow id: ${workflow_id}"
echo "Bitrise config path: ${bitrise_config_path}"
bitrise run ${workflow_id} -c ${bitrise_config_path}
