#!/bin/bash
pkg install -y bash nano
curl -L https://aka.ms/InstallAzureCli | bash
az login
az group delete -n infra-2 --yes
az group create --name infra-2 --location eastus
az vm create --resource-group infra-2 --name infra-2 --image UbuntuLTS --ssh-key-value "ssh-rsa 
AAAAB3NzaC1yc2EAAAADAQABAAABAQC34QGJe1+MkcimmQmiRgZiZX5y7k/z7Y4W2H0WTnh/WhKkUvjRgWcd3A0kUb5MIW9zbRzBFIJBEBrm8HRlF4enXRACr+tVbHUqI5JO3xIEHKWkJHGf0Bg43+VW8X/7ftP7QPe5imet5TL+AqsC62Wq2aUTZMHag1R6xv4AGHHPNx/dbbRn26Mtrc8Jh4WJXtYfk3CDU46zHHUW+VInuDMFmtW4ykeyPqBaKQvrjr+XQm15vfsrtoaBG4JweKOD/LJLs+tiKtsVMf55sWZxdPdHLtO1/Rsb+Z+1wSeT8mM1tBanigShxmJeC0gZ8HQOO2OveF0jYUjMK4wPwGryPZkf" --admin-username kris
