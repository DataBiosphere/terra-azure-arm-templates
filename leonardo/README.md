# How to use the template

```
az deployment group create \
  --resource-group <managed-app-resource-group> \
  --subscription <subscription-id> \
  --template-file "`pwd`/leonardo/dsvm-template.json" \
  --parameters 
    identity=<managed-identity> \
    adminPasswordOrKey="`cat <path to your ssh public key>`" \
    vmName=<vm name>
```

## dsvm-template.json
Adapted from [DSVM Quickstart Template](https://github.com/Azure/azure-quickstart-templates/blob/master/application-workloads/datascience/vm-ubuntu-DSVM-GPU-or-CPU/azuredeploy.json)

### Verify managed identity is assigned to the VM properly

- Run `ssh -i ~/.ssh/id_rsa.pub terra@<ip address of the VM you can get from Azure portal>`

- Run `curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash` to install `az` on the VM

- Run `az login --identity`, and this should not error out.
