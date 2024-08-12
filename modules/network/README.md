# Módulo de Red

Este módulo crea una red en AWS, Azure y Google Cloud. 

## Variables

- `environment`: El entorno donde se desplegará la red (ej. dev, prod).
- `azure_location`: La ubicación en Azure donde se desplegará la red.
- `azure_resource_group`: El nombre del grupo de recursos de Azure.

## Outputs

- `network_id`: El ID de la red en AWS.
- `vnet_name`: El nombre de la red virtual en Azure.
- `gcp_network_name`: El nombre de la red en Google Cloud.
