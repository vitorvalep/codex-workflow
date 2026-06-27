---
name: code-review
description: Use para revisar corretude, legibilidade, manutenção, regressões, cobertura de testes e aderência ao escopo de um diff.
---

# Code Review

Use esta skill para revisar mudanças como mantenedor do projeto.

## Processo

1. Entenda objetivo, critérios de aceite e escopo.
2. Leia o diff e os arquivos próximos quando necessário.
3. Verifique comportamento, contratos, erros, bordas e compatibilidade.
4. Avalie testes e validações executadas.
5. Procure mudanças não relacionadas.
6. Procure abstrações, flexibilidade ou tratamento especulativo sem requisito.
7. Verifique se cada linha alterada se conecta ao pedido, validação ou limpeza causada pela mudança.
8. Classifique findings por severidade.
9. Diferencie bloqueios de sugestões.

## Checklist

- [ ] A mudança atende aos critérios de aceite.
- [ ] Não há regressão óbvia em comportamento existente.
- [ ] Erros e casos de borda foram tratados.
- [ ] Testes são adequados ao risco.
- [ ] O diff é menor do que uma solução alternativa razoável.
- [ ] Convenções locais foram seguidas.
- [ ] Dependências novas foram justificadas.
- [ ] Não há limpeza de código morto preexistente sem pedido.
- [ ] Não há melhoria adjacente ou formatação ampla sem motivo.
- [ ] Documentação foi atualizada quando necessária.

## Severidade

- Bloqueante: bug, regressão, falha de segurança, quebra de contrato ou ausência de validação crítica.
- Alta: risco provável em produção, teste insuficiente para mudança sensível ou manutenção difícil.
- Média: problema que deve ser corrigido antes de crescer.
- Baixa: melhoria útil sem impacto material imediato.

## Critérios de qualidade

- Findings devem incluir caminho, linha ou comportamento afetado.
- Não faça nitpicks sem impacto.
- Não aprove com validação ausente quando a tarefa exige prova.
- Se não houver findings, registre riscos residuais ou lacunas de teste.

## Saída esperada

Inclua:

- Findings ordenados por severidade.
- Perguntas abertas.
- Avaliação de testes.
- Conclusão: aprovado, aprovado com ressalvas ou reprovado.
