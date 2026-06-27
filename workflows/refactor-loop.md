# Refactor Loop

Use este workflow para melhorar estrutura interna preservando comportamento externo.

## 1. Definir objetivo

- Declare qual problema de manutenção será reduzido.
- Confirme que não há mudança funcional pretendida.
- Separe refactor de correção funcional sempre que possível.
- Defina como a equivalência será verificada antes de editar.

## 2. Mapear comportamento existente

- Leia código, testes e documentação.
- Identifique contratos, entradas, saídas e efeitos colaterais.
- Marque áreas sensíveis.

## 3. Criar proteção

- Execute testes existentes.
- Adicione testes de caracterização quando a área não estiver protegida.
- Documente validação manual se necessário.

## 4. Refatorar em passos pequenos

- Faça uma transformação por vez.
- Preserve nomes públicos e contratos salvo autorização.
- Evite mudanças de formatação ampla junto com lógica.
- Não use o refactor para adicionar features ou flexibilidade especulativa.
- Reexecute validações durante o caminho.

## 5. Validar equivalência

- Compare comportamento antes e depois pelos testes.
- Verifique erros, bordas, dados e integração.
- Revise o diff para confirmar ausência de mudança funcional não planejada.

## 6. Encerrar

Inclua:

- Motivação do refactor.
- Comportamento preservado.
- Testes executados.
- Riscos restantes.

## Condições de parada

- Pare se testes de proteção não puderem ser criados para área arriscada.
- Pare se surgir necessidade de mudança funcional.
- Pare se o diff crescer a ponto de dificultar revisão.
