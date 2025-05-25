# 00_setup_project.R

# PASSO 1: Definir o caminho da pasta raiz (ajuste para o seu computador)
caminho_raiz <- "C:/Users/Valvitor/Documents/Projeto_Rendas_Propriedade"
# PASSO 2: Lista de pastas a serem criadas
pastas <- c(
  "data/raw",              # Dados brutos
  "data/processed",        # Dados processados
  "scripts",               # Códigos R
  "outputs/figures",       # Gráficos
  "outputs/tables",        # Tabelas
  "docs/relatorios",       # Relatórios
  "renv"                   # Ambiente reprodutível
)

# PASSO 3: Função para criar pastas (se não existirem)
criar_pastas <- function(caminho_raiz, pastas) {
  for (pasta in pastas) {
    caminho_completo <- file.path(caminho_raiz, pasta)
    if (!dir.exists(caminho_completo)) {
      dir.create(caminho_completo, recursive = TRUE, showWarnings = FALSE)
      message(sprintf("Pasta criada: %s", caminho_completo))
    } else {
      message(sprintf("Pasta já existe: %s", caminho_completo))
    }
  }
}

# PASSO 4: Executar a função
criar_pastas(caminho_raiz, pastas)

# PASSO 5: Criar arquivos R iniciais (opcional)
arquivos_r <- c(
  "scripts/01_data_cleaning.R",
  "scripts/02_compositional_analysis.R",
  "scripts/03_visualization.R"
)

for (arquivo in arquivos_r) {
  caminho_arquivo <- file.path(caminho_raiz, arquivo)
  if (!file.exists(caminho_arquivo)) {
    file.create(caminho_arquivo)
    message(sprintf("Arquivo criado: %s", caminho_arquivo))
  }
}

message("Estrutura do projeto criada com sucesso!")

#Teste versionamento 1
