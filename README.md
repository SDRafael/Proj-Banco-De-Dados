# Banco de Dados: Pessoa, Cargo e Pessoa_Salario

Este banco de dados contém três tabelas principais:

- **pessoa**: armazena informações das pessoas cadastradas.
- **cargo**: armazena os cargos disponíveis na empresa.
- **pessoa_salario**: relaciona pessoas aos seus respectivos salários conforme o cargo.

O banco está populado com dados básicos para teste.

## Procedures disponíveis

- `inserir_pessoa`: procedure para inserir novas pessoas na tabela `pessoa`.
- `calcular_salario`: procedure para calcular o salário das pessoas, provavelmente com base no cargo e bonus.

---

## Passo a passo para importar e testar o banco

1. **Criar o schema (banco de dados)**
   ```sql
   CREATE DATABASE nome_do_schema;
   USE nome_do_schema;

### 2. Importar o arquivo dump (.sql) pelo MySQL Workbench

Para importar o arquivo dump contendo o banco de dados, siga os passos abaixo:

1. Abra o MySQL Workbench e conecte-se ao servidor.
2. No menu superior, clique em **Server > Data Import**.
3. Na seção **Import Options**, selecione **Import from Self-Contained File**.
4. Clique no botão **...** e localize o arquivo dump `.sql` que deseja importar.
5. Em **Default Target Schema**, selecione o schema criado previamente.
   - Caso ainda não tenha criado o schema, pode criar diretamente nesta tela clicando no botão para criar novo schema.
6. Verifique se as opções padrão estão adequadas (normalmente não é necessário alterar).
7. Clique em **Start Import** no canto inferior direito para iniciar a importação.
