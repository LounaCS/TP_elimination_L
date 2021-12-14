# Quality check

multiqc intermediary_results/report_trimming/ -o intermediary_results/multiqc_report_trimming/


# Aggregation of results
multiqc -f results/quantification/ -o results/multiqc_report_quantification/