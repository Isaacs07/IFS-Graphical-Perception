# Graphical Perception Replication Study

This repository contains the research package for a graphical perception study comparing how accurately people estimate quantities from bar charts and pie charts.

The study is a replication and follow-up of Cleveland and McGill’s classic graphical perception work. It examines visual estimation across two related tasks:

1. estimating one chart value as a percentage of another chart value;
2. estimating one chart value as a percentage of the whole chart.

The study is being conducted as part of a PhD Data Visualization research project at City St George’s, University of London, in collaboration with the University of Warwick.

## Materials

The `materials/` folder contains the participant-facing and study-facing materials used in the online experiment.

This includes:

* participant information and consent materials;
* Qualtrics survey export;
* final study stimuli;
* stimulus metadata.

## Stimuli

The `materials/stimuli/` folder contains the bar chart and pie chart images used in the study.

The accompanying stimulus metadata file documents the chart type, condition, filename, and relevant stimulus-generation details.

## Ethics and preregistration

The `docs/` folder contains supporting research documentation, including:

* redacted ethics application materials;
* preregistration documents or links;
* decision log;
* pilot notes.

Only redacted documents are included in this public repository.

## Code

The `code/` folder contains scripts used for:

* generating study stimuli;
* processing study data;
* reproducing the analysis.

## Data

The `data/anonymised/` folder contains the anonymised dataset used for analysis.

Raw data are not included in this repository.

## Reproducing the analysis

To reproduce the analysis:

1. Clone or download this repository.
2. Open the scripts in `code/analysis/`.
3. Check that the data paths point to `data/anonymised/`.
4. Run the analysis script.
5. Compare generated outputs with the files in `outputs/`.

## Citation

Citation information will be added once the repository is finalised.

## Licence

Licence to be confirmed.
