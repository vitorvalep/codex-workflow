# Review Loop

Use este workflow para revisar, corrigir e aprovar mudanças com critérios claros.

## 1. Preparar contexto

- Entenda objetivo, critérios de aceite e escopo.
- Leia resumo de validações executadas.
- Inspecione o diff e arquivos próximos quando necessário.

## 2. Revisar

- Procure bugs, regressões, falta de testes, inconsistência e complexidade desnecessária.
- Procure mudanças fora do escopo, abstrações especulativas e limpeza não solicitada.
- Verifique se cada linha alterada se conecta ao pedido, validação ou limpeza causada pela mudança.
- Avalie segurança e performance quando aplicável.
- Verifique documentação e compatibilidade.

## 3. Classificar findings

- Bloqueante: precisa corrigir antes de aprovar.
- Alta: risco relevante que deve ser tratado.
- Média: manutenção ou clareza com impacto futuro.
- Baixa: sugestão não bloqueante.

## 4. Corrigir

- Para findings bloqueantes ou altos, voltar para implementation.
- Corrigir com mudanças mínimas e focadas.
- Atualizar testes quando a correção revelar lacuna.

## 5. Revalidar

- Executar validações relevantes.
- Reabrir revisão do diff alterado.
- Confirmar que correções não introduziram novos problemas.

## 6. Aprovar ou reprovar

- Aprovar apenas quando critérios, validações e riscos estiverem aceitáveis.
- Reprovar quando ainda houver bug, regressão, validação crítica ausente ou risco não aceito.

## Condições de parada

- Pare se findings exigirem decisão de produto, segurança, arquitetura ou escopo.
- Pare se correções repetidas não resolverem a mesma classe de falha.
- Registre evidências e próximos passos.
