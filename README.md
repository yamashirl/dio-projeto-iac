# Desafio de Projeto - Infraestrutura como Código
## Script de Criação de Estrutura de Usuários, Diretórios e Permissões

### Definições
* Criar 4 pastas:
    * ``/publico``
    * ``/adm``
    * ``/ven``
    * ``/sec``
* Criar 3 grupos:
    * ``GRP_ADM``
    * ``GRP_VEN``
    * ``GRP_SEC``
* Criar 12 usuários, pertencentes aos grupos:
    * ``GRP_ADM``
        * ``carlos``
        * ``maria``
        * ``joao``
    * ``GRP_VEN``
        * ``debora``
        * ``sebastiana``
        * ``roberto``
    * ``GRP_SEC``
        * ``josefina``
        * ``amanda``
        * ``rogerio``
* Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
* O dono de todos os diretórios criados será o usuário ``root``;
* Todos os usuários terão permissão total dentro do diretório ``publico``;
* Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
* Os usuários não poderão ter permissão de leitura, escrita, e execução em diretórios de departamentos que eles não pertencem.

