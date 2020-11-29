# Resource group landing zone

Ce projet a pour objectif de créer rapidement de nouveaux groupes de ressources de sandbox dans Azure.
L'objectif de cela étant que chacun puisse se monter des environnements de maquette au sein d'Azure.

## Prérequis

Pour pouvoir utiliser ce projet, facilement et suivre le guide d'utilisation présenté ci-dessous, vous devrez : 
* avoir généré un "service principal" Azure, soit une application, et des secrets qui lui permettent de lancer l'industrialisation
* avoir accès à l'organisation Acknowledge Terraform Cloud : [app.terraform.io](https://app.terraform.io)

Dans le cadre de l'environnement Acknowledge un service principal a été créé et pourra être utilisé par toute l'équipe.

Il faudra néanmoins s'assurer que vous ayez un accès à Terraform Cloud.
Si vous n'avez pas de compte Terraform Cloud, nous vous invitons à vous rapprocher d'un des membres de l'équipe pour qu'il puisse vous inviter dans l'organisation.

## Comment créer un nouveau groupe de ressources ? 

Vous trouverez [ici](https://gitlab.com/azure-acknowledge/terraform/modules/lz-azure-rg/-/tree/master/doc/user/rg_creation_with_ui) la documentation qui présente comment consommer ce projet au travers la webui de Terraform Cloud.
