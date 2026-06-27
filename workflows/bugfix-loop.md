# Bugfix Loop

Use este workflow para corrigir defeitos preservando comportamento não relacionado.

## 1. Confirmar o bug

- Entenda comportamento esperado e observado.
- Colete entrada, ambiente, logs, erro e passos de reprodução.
- Localize relatos, testes ou documentação relacionados.

## 2. Reproduzir

- Reproduza o bug com o menor cenário possível.
- Se não reproduzir, registre tentativas, ambiente e hipóteses.
- Não implemente correção baseada apenas em suposição quando evidência estiver disponível.

## 3. Proteger com regressão

- Escreva ou ajuste teste que falhe pelo bug atual.
- Se teste automatizado não for viável, documente validação manual.
- Garanta que o teste prova o comportamento esperado.

## 4. Corrigir causa raiz

- Trace o caminho de execução.
- Identifique a causa raiz.
- Aplique a menor correção segura.
- Evite refatoração ampla durante a correção.

## 5. Executar validações

- Rode o teste de regressão.
- Rode testes adjacentes ou suite relevante.
- Registre comandos e resultados.

## 6. Revisar

- Verifique se o bug foi corrigido sem alterar comportamento fora do escopo.
- Confirme cobertura de regressão.
- Avalie riscos de segurança e performance se o bug tocar essas áreas.

## 7. Encerrar

Inclua:

- Causa raiz.
- Correção aplicada.
- Teste de regressão.
- Validações executadas.
- Riscos restantes.

## Condições de parada

- Pare se o bug não puder ser reproduzido e não houver evidência suficiente para uma correção segura.
- Pare se a correção exigir mudança de contrato sem autorização.
- Pare após falhas repetidas sem nova evidência e reporte hipóteses já testadas.
