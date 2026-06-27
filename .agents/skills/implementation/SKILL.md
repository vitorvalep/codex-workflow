---
name: implementation
description: Use para implementar mudanças pequenas, coesas, reversíveis e consistentes com a base de código existente.
---

# Implementation

Use esta skill ao editar código ou arquivos de projeto para entregar uma mudança planejada.

## Processo

1. Leia o código próximo antes de editar.
2. Confirme o escopo e os critérios de aceite.
3. Faça a menor alteração defensável.
4. Siga padrões existentes de estrutura, estilo, nomes, erros e testes.
5. Evite alterações não relacionadas, formatação ampla e reordenação desnecessária.
6. Não adicione features, flexibilidade, configuração ou abstração sem requisito.
7. Remova apenas órfãos criados pela sua própria mudança.
8. Mantenha cada mudança reversível e fácil de revisar.
9. Registre decisões que não forem evidentes no diff.

## Checklist

- [ ] A mudança atende diretamente a um critério de aceite.
- [ ] Arquivos editados pertencem ao escopo.
- [ ] Convenções locais foram seguidas.
- [ ] Dependências novas foram evitadas ou justificadas.
- [ ] Comportamento existente foi preservado.
- [ ] Cada linha alterada se conecta ao pedido, validação ou limpeza causada pela mudança.
- [ ] Erros e bordas relevantes foram tratados.
- [ ] Validação necessária foi identificada.

## Critérios de qualidade

- Código novo deve ser simples antes de ser genérico.
- Remoção de duplicação só deve ocorrer quando melhora a clareza ou reduz risco real.
- Mudanças de contrato precisam ser explícitas e validadas.
- Código temporário, logs de depuração e artefatos locais não devem ficar no diff.
- Se uma implementação de muitas linhas puder ser substituída por uma solução menor e clara, simplifique.

## Condições de parada

Pare e reporte quando:

- O escopo exigir uma decisão de produto ou arquitetura não fornecida.
- A próxima edição puder quebrar contrato público sem autorização.
- Uma dependência nova parecer necessária e não houver justificativa aceita.
- O código real contradizer a suposição central da tarefa.

## Saída esperada

Inclua:

- O que foi alterado.
- Por que a alteração é mínima.
- Arquivos afetados.
- Validações a executar.
- Riscos restantes.
