# Test Loop

Use este workflow para melhorar cobertura, confiabilidade e valor diagnóstico dos testes sem alterar comportamento de produção desnecessariamente.

## 1. Definir risco de teste

- Identifique comportamento a proteger.
- Localize bugs recentes, áreas frágeis ou critérios de aceite.
- Defina o nível adequado de teste.

## 2. Explorar testes existentes

- Leia convenções de nomes, fixtures, helpers e dados.
- Descubra comandos de execução.
- Identifique lacunas e testes instáveis.

## 3. Criar ou ajustar testes

- Escreva testes que falhariam sem o comportamento correto.
- Use dados mínimos e legíveis.
- Evite dependência de ordem, tempo, rede ou ambiente sem controle.
- Não mude produção apenas para facilitar teste sem justificativa.

## 4. Executar

- Rode teste específico.
- Rode grupo adjacente.
- Rode suite maior quando o risco justificar.
- Registre comandos e resultados.

## 5. Diagnosticar falhas

- Classifique falha como produto, teste, ambiente, flake ou dependência.
- Corrija teste incorreto ou reporte bug real.
- Não enfraqueça asserção apenas para passar.

## 6. Encerrar

Inclua:

- Cobertura adicionada.
- Comportamento protegido.
- Comandos executados.
- Falhas encontradas.
- Riscos restantes.

## Condições de parada

- Pare se a criação de teste exigir redesign fora do escopo.
- Pare se ambiente impedir validação e registre bloqueio.
- Pare após flakiness repetida sem nova evidência.
