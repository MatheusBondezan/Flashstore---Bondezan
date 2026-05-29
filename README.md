# 🚀 Flash Store – Sistema Distribuído de E-commerce com Kubernetes

A Flash Store é uma aplicação de e-commerce baseada em arquitetura de microserviços, criada como projeto acadêmico para a graduação em Análise e Desenvolvimento de Sistemas (ADS). O projeto tem como finalidade aplicar conceitos modernos de ambientes cloud-native, utilizando containers, automação de infraestrutura e gerenciamento de aplicações distribuídas.

## 🏗️ Estrutura da Aplicação

O sistema foi dividido em quatro microsserviços independentes desenvolvidos em Python, organizados dentro da pasta /app:

* *API Gateway:* atua como porta de entrada principal da aplicação, direcionando as requisições para os serviços corretos (./app/api-gateway).

* *Serviço de Estoque:* responsável pelo controle de inventário e disponibilidade dos produtos (./app/estoque).

* *Serviço de Pagamentos:* realiza o processamento das transações financeiras do sistema (./app/pagamentos).

* *Serviço de Pedidos:* gerencia a criação e o acompanhamento dos pedidos realizados pelos clientes (./app/pedidos).

## 🛠️ Tecnologias Empregadas

* *Python* como linguagem principal de desenvolvimento;
* *Docker* para criação e gerenciamento dos containers;
* *Kubernetes (K8s)* para orquestração e gerenciamento do cluster;
* *Terraform* e *Docker Compose* para automação e infraestrutura;
* *Docker Hub* utilizado para armazenamento das imagens públicas do projeto.

## 📋 Pré-requisitos

Antes de executar o sistema localmente, é necessário possuir:

* Docker Desktop instalado com suporte ao Kubernetes habilitado;
* kubectl configurado corretamente na máquina;
* Conexão com a internet para realizar o download das imagens Docker.

## 🚀 Execução do Projeto

### Clonando o Repositório

bash
git clone https://github.com/eduratoo/Flash_Store.git

cd Flash_Store


### Realizando o Deploy no Kubernetes

Execute todos os arquivos de configuração localizados na pasta /k8s:

bash
kubectl apply -f ./k8s/


Esse comando criará automaticamente os Deployments, Services e recursos de escalabilidade configurados no cluster.

### Verificando o Funcionamento

Após a implantação, utilize o comando abaixo para validar se todos os pods foram iniciados corretamente:

bash
kubectl get pods


O status esperado para os serviços é Running.

## 📈 Escalabilidade Horizontal

A aplicação conta com configuração de Horizontal Pod Autoscaler (HPA), permitindo que o Kubernetes aumente ou reduza automaticamente a quantidade de pods conforme o consumo de CPU e memória dos serviços.
