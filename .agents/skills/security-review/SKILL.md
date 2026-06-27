---
name: security-review
description: Use para revisar riscos de segurança de forma independente de linguagem ou stack, incluindo entrada, autorização, dados, secrets, injeção, permissões e dependências.
---

# Security Review

Use esta skill para revisar mudanças que tocam fronteiras de confiança, dados sensíveis, permissões, integração externa, autenticação, autorização ou dependências.

## Processo

1. Identifique ativos, atores e fronteiras de confiança.
2. Revise entrada, saída, validação, codificação e tratamento de erro.
3. Verifique autenticação, autorização e escopo de permissões quando existirem.
4. Procure exposição de dados sensíveis em logs, erros, testes, docs e artefatos.
5. Avalie construção de comandos, consultas, caminhos, templates e chamadas externas.
6. Revise novas dependências e configurações.
7. Classifique riscos por impacto, probabilidade e pré-condições.

## Checklist

- [ ] Entrada não confiável é validada ou rejeitada.
- [ ] Saídas são seguras para o contexto de consumo.
- [ ] Autenticação e autorização não foram enfraquecidas.
- [ ] Permissões seguem menor privilégio.
- [ ] Secrets não aparecem em código, logs, testes ou documentação.
- [ ] Erros não vazam informação sensível.
- [ ] Injeção, path traversal e execução indevida foram considerados.
- [ ] Dependências novas têm justificativa e origem confiável.
- [ ] Dados sensíveis têm retenção e exposição controladas.

## Critérios de qualidade

- Findings precisam de caminho de exploração plausível.
- Severidade deve considerar impacto real e pré-condições.
- Mitigações devem ser mínimas e verificáveis.
- Ausência de contexto deve virar pergunta ou risco residual, não afirmação.

## Saída esperada

Inclua:

- Superfícies revisadas.
- Findings com severidade.
- Mitigações recomendadas.
- Validações de segurança sugeridas.
- Riscos residuais.
