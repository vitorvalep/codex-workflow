---
name: git-workflow
description: Use para orientar commits, branches, merge requests, diffs pequenos, mensagens de commit e higiene de histórico em qualquer projeto.
---

# Git Workflow

Use esta skill quando a tarefa envolver preparação de diff, commit, branch, revisão, merge request ou higiene de histórico.

## Processo

1. Verifique o estado do repositório antes de operações Git.
2. Separe mudanças do usuário de mudanças feitas na tarefa.
3. Mantenha o diff pequeno e focado.
4. Agrupe alterações por intenção.
5. Execute validações relevantes antes de commit ou entrega.
6. Escreva mensagens claras quando commits forem solicitados.
7. Não altere histórico compartilhado sem autorização explícita.

## Checklist

- [ ] Status do repositório verificado.
- [ ] Mudanças não relacionadas preservadas.
- [ ] Arquivos gerados ou temporários excluídos do diff quando apropriado.
- [ ] Testes ou validações relevantes executados.
- [ ] Mensagem de commit descreve intenção e impacto.
- [ ] Branch ou MR inclui contexto, testes e riscos.

## Mensagem de commit

Use uma linha de assunto curta e imperativa quando o projeto não definir padrão próprio.

Inclua corpo quando houver:

- Motivação não óbvia.
- Risco ou limitação.
- Migração ou operação manual.
- Referência a issue, ticket ou incidente.

## Critérios de qualidade

- Não misture refactor amplo com correção funcional sem necessidade.
- Não reverta trabalho alheio sem pedido explícito.
- Não use comandos destrutivos sem autorização.
- Não faça commit, push, merge ou rebase se isso não foi solicitado.

## Saída esperada

Inclua:

- Status relevante.
- Arquivos incluídos.
- Validações executadas.
- Mensagem sugerida quando aplicável.
- Riscos de histórico ou merge.
