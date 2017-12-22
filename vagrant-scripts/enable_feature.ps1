echo "Enabling .NET 3.5, .NET 4.0, IIS Feature"
Import-Module servermanager
Install-WindowsFeature -ConfigurationFilePath C:\vagrant\vagrant-scripts\DeploymentConfigTemplate.xml