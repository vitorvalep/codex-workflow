# Development Loop

Use este workflow como fluxo principal para feature development, bugfix simples, refactor controlado, testes, documentação e revisão.

## 1. Intake

- Leia a tarefa e os critérios de aceite.
- Identifique escopo, não escopo, restrições e riscos.
- Se requisitos estiverem incompletos, registre a ambiguidade.
- Quando for seguro, faça a menor suposição compatível com o pedido.
- Se houver bloqueio real, pare e explique a informação necessária.

## 2. Planning

- Defina objetivo em termos verificáveis.
- Proponha plano curto.
- Defina validações necessárias.
- Estabeleça condições de parada.

## 3. Exploration

- Inspecione o código real antes de decidir.
- Localize arquivos, testes, documentação e configuração relevantes.
- Descubra comandos de build, teste, lint, formatação e execução.
- Registre evidências e diferencie fatos de inferências.

## 4. Design

- Escolha a menor solução defensável.
- Preserve compatibilidade e convenções existentes.
- Identifique impactos em contratos, dados, configuração, erros e operação.
- Defina como cada risco será validado.

## 5. Implementation

- Faça mudanças pequenas e focadas.
- Evite refatorações não relacionadas.
- Justifique dependências novas.
- Mantenha a alteração reversível.

## 6. Test Writing

- Crie ou atualize testes no nível adequado.
- Inclua casos nominais, bordas, regressões e falhas esperadas quando aplicável.
- Se automação não for possível, escreva validação manual objetiva.

## 7. Test Execution

- Execute o menor conjunto relevante primeiro.
- Execute validações mais amplas quando o risco justificar.
- Registre comando, resultado, saída importante e ambiente relevante.

## 8. Debugging

- Se testes, build, lint ou execução falharem, volte para debugging.
- Classifique a falha antes de corrigir.
- Corrija a causa raiz com mudança mínima.
- Reexecute a validação que falhou.

## 9. Review

- Revise o diff como mantenedor.
- Verifique corretude, regressões, escopo, testes e manutenção.
- Se a revisão reprovar, volte para implementation com findings objetivos.

## 10. Security and Performance Review

Execute quando a mudança tocar:

- Entrada não confiável, autenticação, autorização, dados sensíveis, permissões, secrets, dependências ou execução externa.
- Caminhos críticos, volume alto, I/O, concorrência, memória, cache, chamadas repetidas ou escalabilidade.

Se houver reprovação, volte para implementation ou debugging conforme a causa.

## 11. Documentation

- Atualize documentação quando comportamento, uso, operação, configuração ou contrato mudar.
- Evite comentários redundantes.
- Registre limitações e decisões importantes.

## 12. Final Validation

- Reexecute validações relevantes após as últimas mudanças.
- Confirme critérios de aceite.
- Confirme que riscos conhecidos foram corrigidos, aceitos ou documentados.

## 13. Summary

Ao encerrar, informe:

- Resumo da mudança.
- Arquivos alterados.
- Comandos executados.
- Testes e validações, com resultados.
- Riscos restantes.
- Bloqueios, se houver.

## Loop Control

- Se testes falharem, voltar para debugging.
- Se revisão reprovar, voltar para implementation.
- Se requisitos estiverem incompletos, registrar ambiguidade e fazer a menor suposição segura.
- Se houver bloqueio real, parar e explicar.
- Se a mesma falha ocorrer repetidamente, parar após tentativas razoáveis e reportar evidência.
- Encerrar apenas quando a definição de pronto for atendida.
