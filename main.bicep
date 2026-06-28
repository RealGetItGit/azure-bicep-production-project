param location string
param vnetConfig object

module mainVnet 'modules/network/vnet.bicep' = {
  name: 'dev-network'
  params: {
    vnetName: vnetConfig.name
    location: location
    vnetAddressPrefix: vnetConfig.vnetaddressPrefix
    subnets: vnetConfig.subnets
  }
}
