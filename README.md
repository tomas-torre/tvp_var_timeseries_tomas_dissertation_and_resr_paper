# Análise de Séries Temporais Avançada com TVP-VAR

Este repositório contém o código desenvolvido em R para o artigo publicado na **Revista Sober**, que é baseado na minha dissertação de mestrado.

O objetivo do trabalho foi analisar mercados pecuários e de grãos utilizando **modelos de séries temporais avançados**, focando na **TVP-VAR (Time-Varying Parameter Vector Autoregression)**.

Links para o trabalho:
- Artigo: https://revistasober.org/journal/resr/article/doi/10.1590/1806-9479.2025.293824
- Dissertação: http://repositorio.uem.br:8080/jspui/handle/1/8723
---

## O que faz o trabalho

O estudo realiza:

- Modelagem dinâmica de séries temporais multivariadas;
- Avaliação da conectividade e spillover de volatilidade entre mercados;
- Decomposição temporal de impactos e variâncias;
- Análise de efeitos assimétricos entre variáveis econômicas e de commodities.

As análises são aplicadas em séries mensais, contemplando mercados de suínos, boi, frango, leite, ovos, milho, soja e taxa de câmbio, no período de janeiro de 1995 a fevereiro de 2024.

---

## Metodologia TVP-VAR

A **TVP-VAR** é uma extensão do modelo VAR clássico, permitindo que **os parâmetros variem ao longo do tempo**. Isso possibilita capturar mudanças estruturais, volatilidade dinâmica e relações não estacionárias entre variáveis.  

Características do modelo usado:

- **Equações matemáticas desenvolvidas:** incluem derivadas e integrais para decomposição da variância;
- **Parâmetros variáveis no tempo:** permitem identificar mudanças nos impactos entre séries;
- **Decomposição da variância:** mostra como choques em uma variável afetam outras ao longo do tempo.

Essa metodologia é especialmente útil em mercados financeiros e de commodities, onde as relações entre séries evoluem de forma não linear e dependem do contexto econômico.

---

## Como usar

1. Clone o repositório:

```bash
git clone https://github.com/tomas-torre/tvp_var_timeseries_tomas_dissertation_and_resr_paper.git
