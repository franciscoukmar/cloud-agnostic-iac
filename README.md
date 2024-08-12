- # Cloud-Agnostic IaC (WORK IN PROGRESS)

Este proyecto utiliza Terraform para desplegar una infraestructura básica agnóstica al proveedor de nube.

## Estructura del Proyecto

- `main.tf`: Archivo principal donde se define la infraestructura.
- `variables.tf`: Archivo para definir variables reutilizables.
- `outputs.tf`: Archivo para definir los outputs.
- `providers.tf`: Archivo para definir los proveedores de Terraform.
- `terraform.tfvars`: Archivo para valores específicos de variables (opcional).
- `modules/`: Directorio que contiene módulos reutilizables para la red y máquinas virtuales.

## Instrucciones

1. Clona el repositorio.
2. Ejecuta `terraform init` para inicializar el proyecto.
3. Modifica `terraform.tfvars` para ajustar las variables a tu entorno.
4. Ejecuta `terraform plan` para ver el plan de despliegue.
5. Ejecuta `terraform apply` para desplegar la infraestructura.
