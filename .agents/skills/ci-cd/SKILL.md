---
name: ci-cd
description: Use para orientar integração contínua, pipelines, validações automatizadas, gates de qualidade e diagnóstico de falhas em CI/CD.
---

# CI/CD

Use esta skill quando a tarefa envolver pipelines, automação de validação, release gates, falhas de CI ou sincronização entre validação local e remota.

## Processo

1. Descubra como o projeto define CI/CD: arquivos de pipeline, scripts, documentação e comandos locais equivalentes.
2. Identifique gatilhos, jobs, dependências, caches, artefatos e secrets necessários.
3. Relacione cada gate a um risco: build, teste, lint, segurança, compatibilidade, empacotamento ou deploy.
4. Reproduza falhas localmente quando viável.
5. Classifique falhas: código, teste, ambiente, configuração, flake, dependência externa ou permissão.
6. Corrija a causa raiz com o menor impacto.
7. Registre comandos, logs relevantes, resultado e risco residual.

## Checklist

- [ ] Pipeline ou workflow relevante localizado.
- [ ] Comandos locais equivalentes identificados.
- [ ] Secrets e permissões não foram expostos.
- [ ] Cache e artefatos não mascaram falhas.
- [ ] Gates críticos existem para riscos da mudança.
- [ ] Falhas foram classificadas antes de corrigir.
- [ ] Mudanças de CI foram validadas ou explicadas.

## Critérios de qualidade

- CI deve ser determinístico e diagnosticar falhas com clareza.
- Gates devem proteger comportamento relevante sem bloquear por ruído desnecessário.
- Logs devem ser úteis sem expor dados sensíveis.
- Dependências externas devem ter tolerância, pinagem ou estratégia de falha quando apropriado.

## Saída esperada

Inclua:

- Jobs ou pipelines afetados.
- Comandos locais usados.
- Falhas e classificação.
- Correções feitas.
- Validações finais.
- Riscos restantes para execução remota.
