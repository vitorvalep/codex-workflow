---
name: performance-review
description: Use para revisar riscos de performance, escalabilidade e uso de recursos sem assumir linguagem, framework ou infraestrutura.
---

# Performance Review

Use esta skill quando uma mudança puder afetar latência, throughput, custo, memória, armazenamento, I/O, concorrência ou escalabilidade.

## Processo

1. Identifique caminhos críticos e frequência esperada de execução.
2. Avalie complexidade de tempo e espaço.
3. Procure I/O repetido, chamadas externas, loops aninhados, alocações grandes e serialização custosa.
4. Considere cache, batching, paginação, streaming, concorrência e backpressure quando aplicável.
5. Diferencie risco plausível de otimização prematura.
6. Solicite medição quando a decisão depender de dados.
7. Recomende mitigação mínima sem prejudicar corretude.

## Checklist

- [ ] Complexidade é adequada ao tamanho esperado dos dados.
- [ ] Operações de I/O são necessárias e agrupadas quando possível.
- [ ] Não há trabalho repetido evitável em caminho frequente.
- [ ] Memória e ciclo de vida de recursos foram considerados.
- [ ] Concorrência não introduz contenção, corrida ou espera desnecessária.
- [ ] Cache, invalidação e consistência foram avaliados quando usados.
- [ ] Testes ou medições foram sugeridos para riscos materiais.

## Critérios de qualidade

- Não recomendar otimização sem hipótese clara.
- Preservar legibilidade e corretude.
- Preferir medição local ou benchmark representativo quando disponível.
- Registrar limitações da medição.

## Saída esperada

Inclua:

- Caminhos avaliados.
- Riscos de performance.
- Evidência ou hipótese.
- Mitigação proposta.
- Medições ou validações recomendadas.
