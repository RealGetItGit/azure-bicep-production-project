@description('The name of the virtual network.')
param vnetName string

@description('The location of the virtual network.')
param location string

@description('The address prefix for the virtual network.')
param vnetAddressPrefix array

@description('The subnets for the virtual network.')
param subnets array


resource vnet 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: { addressPrefixes: vnetAddressPrefix }
    subnets: [
      for s in subnets: {
        name: s.name
        properties: { addressPrefix: s.subnetAddressPrefix }
      }
    ]
  }
}
