# Release Readiness Loop

Use este workflow para avaliar se uma mudança, versão ou entrega está pronta para release.

## 1. Escopo do release

- Liste mudanças incluídas.
- Identifique contratos, migrações, configuração, dependências e documentação afetadas.
- Confirme critérios de aceite e requisitos operacionais.

## 2. Validação funcional

- Execute testes relevantes.
- Verifique smoke tests ou fluxos críticos.
- Confirme correções de bug e features principais.

## 3. Compatibilidade

- Avalie compatibilidade com dados, APIs, formatos, clientes, integrações e versões suportadas.
- Identifique mudanças quebráveis e migrações necessárias.
- Confirme estratégia de rollback quando aplicável.

## 4. Segurança e compliance

- Revise secrets, permissões, dados sensíveis, logs, dependências e fronteiras de confiança.
- Confirme que novos acessos ou permissões foram justificados.
- Registre riscos aceitos.

## 5. Performance e capacidade

- Avalie caminhos críticos, recursos, escalabilidade e custo.
- Execute medições ou smoke de performance quando aplicável.
- Confirme que não há gargalos óbvios introduzidos.

## 6. Operação

- Verifique documentação, runbooks, observabilidade, alertas, migrações e passos manuais.
- Confirme plano de deploy e rollback.
- Garanta que falhas esperadas sejam diagnosticáveis.

## 7. Decisão

- Go: validações passaram e riscos são aceitáveis.
- Go com ressalvas: riscos conhecidos têm mitigação e dono.
- No-go: falha crítica, validação ausente ou bloqueio operacional.

## Saída esperada

Inclua:

- Resultado final.
- Validações executadas.
- Documentação e migrações revisadas.
- Riscos e mitigação.
- Plano de rollback.
- Pendências antes do release.

## Condições de parada

- Pare se qualquer gate crítico falhar.
- Pare se rollback ou recuperação não estiverem claros para mudança arriscada.
- Pare se dependência externa, credencial ou ambiente impedir validação essencial.
