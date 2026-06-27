---
name: testing
description: Use para criar testes unitários, integração, regressão, contrato, smoke tests e validações manuais quando automação não for possível.
---

# Testing

Use esta skill para planejar, escrever ou avaliar validações de comportamento.

## Processo

1. Identifique o risco que precisa ser provado ou protegido.
2. Escolha o nível de teste mais próximo do comportamento.
3. Reuse framework, fixtures, dados e estilo existentes.
4. Cubra caminho nominal, bordas, regressões e falhas esperadas quando aplicável.
5. Garanta determinismo e isolamento.
6. Execute o menor conjunto relevante antes de validações amplas.
7. Registre comandos, resultados e limitações.

## Tipos de validação

- Unitário: regras locais, transformações, cálculo e ramificações.
- Integração: interação entre componentes reais ou substitutos oficiais.
- Contrato: compatibilidade de interface, formato, protocolo ou schema.
- Regressão: reprodução de bug conhecido antes da correção.
- Smoke: fluxo essencial para detectar quebra grosseira.
- Manual: passos verificáveis quando automação não for viável.

## Checklist

- [ ] O teste falharia sem a mudança.
- [ ] O teste valida comportamento, não detalhes irrelevantes.
- [ ] Dados de teste são mínimos e legíveis.
- [ ] Falhas produzem diagnóstico útil.
- [ ] O teste não depende de ordem, tempo, rede ou ambiente sem controle.
- [ ] Casos de erro relevantes foram incluídos.
- [ ] Validação manual foi documentada quando necessária.

## Critérios de qualidade

- Testes devem ser confiáveis e manter baixo custo de manutenção.
- Cobertura deve acompanhar risco, não buscar volume artificial.
- Testes frágeis devem ser corrigidos ou explicitamente classificados.
- Não remova teste existente sem explicar por que ele deixou de representar comportamento válido.

## Saída esperada

Inclua:

- Plano de teste.
- Testes adicionados ou alterados.
- Comandos de execução.
- Resultado esperado.
- Lacunas de cobertura.
