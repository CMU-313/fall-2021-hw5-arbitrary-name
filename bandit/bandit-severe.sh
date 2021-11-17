#!/bin/sh

echo "Starting bandit scanning process ... "
bandit -r -f html --severity-level medium --confidence-level medium $1 > bandit_SEVERE_report.html

current_time=$(date "+%Y.%m.%d-%H%M%S")
new_report_name=bandit_SEVERE_report_$current_time.html

mv bandit_SEVERE_report.html reports/$new_report_name

echo "Bandit report is ready at " $new_report_name
