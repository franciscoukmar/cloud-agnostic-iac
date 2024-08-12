# Módulo de Máquinas Virtuales

Este módulo crea máquinas virtuales en AWS, Azure y Google Cloud.

## Variables

- `environment`: El entorno donde se desplegará la máquina virtual (ej. dev, prod).
- `aws_ami`: La AMI de AWS para la instancia EC2.
- `aws_instance_type`: El tipo de instancia de AWS (ej. t2.micro).
- `azure_location`: La ubicación en Azure donde se desplegará la máquina virtual.
- `azure_resource_group`: El nombre del grupo de recursos de Azure.
- `azure_vm_size`: El tamaño de la máquina virtual en Azure (ej. Standard_B1s).
- `gcp_machine_type`: El tipo de máquina en Google Cloud (ej. f1-micro).
- `gcp_zone`: La zona en Google Cloud donde
