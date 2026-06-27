---
name: software-design
description: Use para desenhar soluções mínimas, modulares, testáveis e compatíveis com o código existente antes de implementar mudanças de software.
---

# Software Design

Use esta skill para propor um desenho técnico curto antes de mudanças com impacto em contratos, fluxos, dados, arquitetura ou manutenção.

## Processo

1. Baseie o desenho em evidência do repositório.
2. Identifique fronteiras afetadas: entrada, saída, estado, persistência, integração, erro e configuração.
3. Escolha a menor alteração que atende aos critérios de aceite.
4. Preserve contratos existentes quando possível.
5. Reutilize padrões, abstrações e convenções locais.
6. Defina validações para cada risco relevante.
7. Registre alternativas descartadas apenas quando a decisão não for óbvia.

## Checklist

- [ ] O comportamento esperado está claro.
- [ ] Arquivos ou módulos prováveis foram identificados.
- [ ] Interfaces afetadas foram mapeadas.
- [ ] Compatibilidade foi considerada.
- [ ] Erros e casos de borda foram considerados.
- [ ] Estratégia de teste foi definida.
- [ ] Riscos e rollback foram avaliados quando aplicável.

## Critérios de qualidade

- O desenho deve caber em passos pequenos.
- Abstrações novas precisam remover complexidade real ou seguir padrão existente.
- A solução deve minimizar dependências novas.
- O plano deve permitir validação parcial durante o caminho.

## Antipadrões

- Introduzir arquitetura genérica sem necessidade imediata.
- Reescrever áreas estáveis para encaixar uma preferência.
- Misturar refatoração ampla com correção funcional simples.
- Depender de comportamento não verificado do projeto.

## Saída esperada

Inclua:

- Abordagem proposta.
- Componentes afetados.
- Contratos ou compatibilidade.
- Riscos.
- Plano de implementação em passos.
- Plano de validação.
