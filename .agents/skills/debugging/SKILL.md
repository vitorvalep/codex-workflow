---
name: debugging
description: Use para investigar falhas usando logs, reprodução, hipóteses, isolamento, causa raiz e correção mínima.
---

# Debugging

Use esta skill quando build, teste, lint, execução ou revisão revelar uma falha.

## Processo

1. Capture a falha exata: comando, entrada, ambiente relevante, saída e status.
2. Reproduza quando possível.
3. Classifique a falha: regressão, teste incorreto, ambiente, dado, flake, dependência ou desconhecida.
4. Forme uma hipótese pequena.
5. Inspecione o caminho de execução e isole a fronteira que falha.
6. Aplique a menor correção na causa raiz.
7. Reexecute a validação que falhou.
8. Rode validações adjacentes quando o risco justificar.

## Checklist

- [ ] Falha original registrada.
- [ ] Hipótese explícita antes da correção.
- [ ] Evidência coletada do código, logs ou testes.
- [ ] Causa raiz identificada ou incerteza registrada.
- [ ] Correção limitada ao problema.
- [ ] Validação reexecutada.
- [ ] Risco de regressão avaliado.

## Critérios de qualidade

- Corrigir sintoma sem entender a causa deve ser exceção documentada.
- Mudanças amplas para "tentar resolver" devem ser evitadas.
- Se a falha for intermitente, registrar frequência, gatilhos suspeitos e mitigação.
- Se a falha depender de ambiente externo, separar problema do código e problema operacional.

## Limite de loop

Pare e reporte quando a mesma falha ocorrer repetidamente sem nova evidência após tentativas razoáveis. Inclua:

- Comandos executados.
- Saídas relevantes.
- Hipóteses testadas.
- Mudanças feitas.
- Próxima informação necessária.
