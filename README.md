# codex-workflow

`codex-workflow` é um kit reutilizável de configurações, agentes, skills, workflows e templates para conduzir desenvolvimento de software com Codex de forma disciplinada.

O objetivo é fornecer um processo padrão para qualquer projeto, linguagem, framework, plataforma ou stack. O kit ajuda o Codex a trabalhar em ciclos curtos: entender, explorar, planejar, implementar, testar, depurar, revisar, documentar e repetir até que a definição de pronto seja atendida.

As diretrizes privilegiam evidência do código real em vez de suposições, mudanças pequenas e reversíveis, validação explícita e registro dos comandos executados, resultados obtidos e riscos restantes.

As regras favorecem cautela em vez de velocidade. Para tarefas triviais, use julgamento, mas o padrão do kit é reduzir erros comuns de agentes de código: assumir requisitos não ditos, criar soluções grandes demais, mexer em código fora do escopo e encerrar sem validação.

## O que este repositório contém

- `AGENTS.md`: regras principais para o agente coordenador, subagentes e encerramento de tarefas.
- `.codex/config.toml`: limites conservadores para execução de subagentes.
- `.codex/agents/`: perfis de agentes especializados.
- `.agents/skills/`: skills reutilizáveis com checklists práticos.
- `workflows/`: loops operacionais para desenvolvimento, bugfix, refactor, testes, revisão e release.
- `templates/`: documentos preenchíveis para planejar, testar, revisar e encerrar tarefas.
- `scripts/`: utilitários para instalar localmente ou sincronizar o kit para outro projeto.

## Para quem é

Este repositório é útil quando você quer que o Codex trabalhe com um processo consistente em projetos diferentes, sem acoplar o fluxo a uma tecnologia específica. Ele pode ser usado em bases pequenas, monorepos, bibliotecas, aplicações, ferramentas internas, serviços, produtos de dados, sistemas embarcados ou qualquer outro tipo de software, desde que as regras específicas do projeto sejam descobertas ou adicionadas localmente.

## Instalação local

Para instalar os agentes e skills no seu ambiente local em macOS, Linux ou shells compatíveis com Bash:

```bash
./scripts/install-local.sh
```

No Windows PowerShell:

```powershell
.\scripts\install-local.ps1
```

O script copia:

- `.codex/agents` para `~/.codex/agents`
- `.agents/skills` para `~/.agents/skills`

Ele cria diretórios quando necessário, não apaga arquivos existentes e imprime cada item instalado.

O script não instala workflows e templates globalmente. Esses arquivos são pensados para acompanhar projetos específicos ou para serem lidos diretamente neste repositório.

## Sincronizar para um projeto

Para aplicar este kit em outro projeto em macOS, Linux ou shells compatíveis com Bash:

```bash
./scripts/sync-to-project.sh /caminho/do/projeto
```

No Windows PowerShell:

```powershell
.\scripts\sync-to-project.ps1 C:\caminho\do\projeto
```

O script copia:

- `AGENTS.md`
- `.codex/agents`
- `.agents/skills`
- `workflows`
- `templates`

Use isto quando quiser que um projeto carregue regras, workflows e templates próprios a partir da raiz do repositório.

## Como usar o loop de desenvolvimento

Use `workflows/development-loop.md` como fluxo padrão. O loop exige:

1. Entender a tarefa e critérios de aceite.
2. Explorar o código real antes de decidir.
3. Planejar a menor mudança defensável.
4. Implementar em passos pequenos.
5. Criar ou atualizar validações.
6. Executar testes, lint, build ou verificações equivalentes.
7. Depurar falhas pela causa raiz.
8. Revisar o diff.
9. Atualizar documentação quando necessário.
10. Encerrar apenas quando a definição de pronto for atendida.

Se teste, build, revisão, segurança ou performance falharem, o resultado alimenta o próximo ciclo. Se a mesma falha se repetir sem progresso objetivo, o loop deve parar e registrar evidências, hipóteses e bloqueios.

## Diretrizes de comportamento

O desenvolvimento deve seguir quatro regras práticas:

- Pense antes de codar: declare suposições, ambiguidades e tradeoffs; se a ambiguidade for bloqueante, pergunte antes de editar.
- Simplicidade primeiro: implemente o menor código que resolve o problema; não adicione features, abstrações, configurabilidade ou flexibilidade especulativa.
- Mudanças cirúrgicas: toque apenas no necessário; não melhore código adjacente, não formate arquivos sem relação e limpe somente órfãos criados pela sua própria mudança.
- Execução orientada a objetivo: transforme a tarefa em critérios verificáveis, associe etapas a validações e repita o loop até passar ou até encontrar bloqueio real.

Teste mental para revisão: cada linha alterada deve rastrear diretamente até o pedido do usuário, a validação necessária ou a limpeza causada pela própria mudança.

## Agentes disponíveis

- `planner`: entende a tarefa, critérios de aceite, riscos e validação.
- `explorer`: investiga o repositório, arquivos relevantes, comandos e convenções.
- `architect`: propõe design técnico mínimo e compatível com o código existente.
- `implementer`: implementa a menor alteração defensável.
- `test_writer`: cria ou atualiza testes.
- `test_runner`: executa validações e classifica falhas.
- `debugger`: investiga falhas e corrige causa raiz com mudanças mínimas.
- `reviewer`: revisa o diff como mantenedor.
- `security_reviewer`: revisa riscos de segurança de forma genérica.
- `performance_reviewer`: revisa riscos de performance e escalabilidade.
- `documenter`: atualiza documentação útil ao usuário, operador ou mantenedor.

## Como pedir ao Codex para usar os agentes

Você pode pedir explicitamente pelo workflow e pelos agentes relevantes. Exemplo:

```text
Use o workflow development-loop.

Tarefa:
<descreva a tarefa>

Critérios de aceite:
- <critério 1>
- <critério 2>

Instruções:
- Use os agentes relevantes.
- Faça planejamento, exploração, implementação, testes, execução, depuração e revisão.
- Repita o loop até passar nos testes e na revisão, ou até encontrar um bloqueio real.
- Não faça mudanças fora do escopo.
- No final, entregue resumo, arquivos alterados, testes executados, resultado e riscos restantes.
```

Sugestões de agentes por fase:

- `planner`: requisitos, riscos e plano curto.
- `explorer`: investigação de arquivos, comandos e convenções.
- `architect`: desenho técnico mínimo.
- `implementer`: alteração de código.
- `test_writer`: criação ou atualização de testes.
- `test_runner`: execução e classificação de validações.
- `debugger`: correção de falhas.
- `reviewer`: revisão geral do diff.
- `security_reviewer`: revisão de segurança.
- `performance_reviewer`: revisão de performance.
- `documenter`: documentação técnica e notas de uso.

## Skills incluídas

- `requirements-analysis`: transformar pedidos em requisitos, restrições e critérios de aceite.
- `software-design`: desenhar soluções mínimas, modulares e testáveis.
- `implementation`: implementar mudanças pequenas, coesas e reversíveis.
- `testing`: planejar testes automatizados e validações manuais.
- `debugging`: investigar falhas por reprodução, hipótese e causa raiz.
- `code-review`: revisar corretude, manutenção, escopo e cobertura.
- `security-review`: revisar riscos de segurança sem assumir stack.
- `performance-review`: revisar complexidade, recursos, I/O e escalabilidade.
- `documentation`: escrever documentação útil e evitar comentários redundantes.
- `git-workflow`: orientar commits, branches, diffs pequenos e higiene de histórico.
- `ci-cd`: orientar pipelines, gates de qualidade e diagnóstico de falhas.

## Como adicionar novas skills

Crie um diretório em `.agents/skills/<nome-da-skill>/SKILL.md`.

Regras:

- Use nomes em minúsculas com hífens.
- Inclua apenas frontmatter YAML com `name` e `description`.
- Descreva no `description` quando a skill deve ser usada.
- Mantenha o corpo prático: passos, checklists, critérios de qualidade e condições de parada.
- Evite dependências de linguagem, ferramenta ou stack, exceto quando a skill for explicitamente específica.
- Não inclua documentação auxiliar dentro da skill sem necessidade.

Modelo mínimo:

```markdown
---
name: minha-skill
description: Use quando Codex precisar executar um fluxo específico com regras reutilizáveis e critérios claros.
---

# Minha Skill

## Processo

1. ...

## Checklist

- [ ] ...
```

## Customização para um projeto específico

Ao sincronizar este kit para um projeto, adapte apenas o que for específico:

- Comandos reais de build, teste, lint, formatação e release.
- Convenções de arquitetura, nomenclatura e organização.
- Regras de segurança, dados sensíveis e compliance.
- Gates de CI/CD e ambientes suportados.
- Definição local de pronto.

Mantenha o material genérico separado das regras específicas do projeto para facilitar atualização do kit base.

## Fluxo recomendado em um projeto real

1. Sincronize o kit para o projeto.
2. Ajuste `AGENTS.md` apenas com regras específicas do projeto.
3. Peça ao Codex para usar `workflows/development-loop.md`.
4. Forneça tarefa e critérios de aceite.
5. Exija resumo final com arquivos alterados, comandos, resultados e riscos.

Exemplo:

```text
Use o workflow development-loop.

Tarefa:
Corrigir o comportamento de arquivamento de itens descrito em TASK.md.

Critérios de aceite:
- O bug deve ser reproduzido antes da correção.
- Deve existir teste de regressão.
- A validação final deve ser registrada.

Instruções:
- Use os agentes relevantes.
- Não faça mudanças fora do escopo.
- Justifique qualquer dependência nova.
- Encerre apenas quando testes e revisão passarem ou quando houver bloqueio real.
```

## Boas práticas

- Prefira evidência do código real a suposições.
- Declare suposições antes de implementar.
- Faça mudanças pequenas, testáveis e reversíveis.
- Prefira soluções simples e específicas a abstrações especulativas.
- Separe refatorações grandes de correções funcionais sempre que possível.
- Justifique qualquer dependência nova.
- Registre comandos executados, testes feitos, resultados e riscos restantes.
- Não considere uma tarefa pronta sem validação.
- Evite alterações fora do escopo mesmo quando forem tentadoras.
- Mencione problemas fora do escopo em vez de corrigi-los automaticamente.
- Use subagentes para análise independente, não para diluir responsabilidade.

## Limitações

- Este kit não substitui conhecimento específico do projeto.
- Os comandos de validação precisam ser descobertos ou definidos por projeto.
- Alguns ambientes exigem aprovações manuais para instalar dependências, executar serviços ou acessar rede.
- Nem toda validação pode ser automatizada; quando isso acontecer, registre validações manuais e riscos residuais.
- O uso de subagentes depende da disponibilidade da superfície Codex em uso.
- Este repositório não substitui revisão humana em mudanças críticas de segurança, dados, infraestrutura ou release.
