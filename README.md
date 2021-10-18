# Bitrise Run

[![Step changelog](https://shields.io/github/v/release/bitrise-steplib/steps-bitrise-run?include_prereleases&label=changelog&color=blueviolet)](https://github.com/bitrise-steplib/steps-bitrise-run/releases)

Runs a specified Workflow from the `bitrise.yml` file.

<details>
<summary>Description</summary>

This Step runs a specified Workflow from the targeted `bitrise.yml` file.

### Configuring the Step

1. Set the **Workflow ID** input. It uses the `$BITRISE_TRIGGERED_WORKFLOW_ID` Environment Variable (Env Var) by default. This Env Var is automatically set to the Workflow that triggered the build.
2. Set the **bitrise.yml path**. It's populated with `./bitrise.yml` path by default.

### Troubleshooting
Please make sure that you select an existing Workflow ID.
Please make sure that you set a correct and existing `bitrise.yml` file path.

### Related Steps
- [Bitrise Start Build](https://www.bitrise.io/integrations/steps/build-router-start)
- [Bitrise Wait for Build](https://www.bitrise.io/integrations/steps/build-router-wait)
</details>

## 🧩 Get started

Add this step directly to your workflow in the [Bitrise Workflow Editor](https://devcenter.bitrise.io/steps-and-workflows/steps-and-workflows-index/).

You can also run this step directly with [Bitrise CLI](https://github.com/bitrise-io/bitrise).

## ⚙️ Configuration

<details>
<summary>Inputs</summary>

| Key | Description | Flags | Default |
| --- | --- | --- | --- |
| `workflow_id` | ID (name) of the workflow to run.  It must exist in the bitrise.yml file. | required | `$BITRISE_TRIGGERED_WORKFLOW_ID` |
| `bitrise_config_path` |  | required | `./bitrise.yml` |
</details>

<details>
<summary>Outputs</summary>
There are no outputs defined in this step
</details>

## 🙋 Contributing

We welcome [pull requests](https://github.com/bitrise-steplib/steps-bitrise-run/pulls) and [issues](https://github.com/bitrise-steplib/steps-bitrise-run/issues) against this repository.

For pull requests, work on your changes in a forked repository and use the Bitrise CLI to [run step tests locally](https://devcenter.bitrise.io/bitrise-cli/run-your-first-build/).

Learn more about developing steps:

- [Create your own step](https://devcenter.bitrise.io/contributors/create-your-own-step/)
- [Testing your Step](https://devcenter.bitrise.io/contributors/testing-and-versioning-your-steps/)
