#!/usr/bin/env bash
set -euo pipefail
mkdir -p out
for f in \
  title_banner.typ \
  report.typ \
  conclusion_strip.typ \
  real_world_application_strip.typ \
  question_hypothesis_strip.typ \
  photos_strip.typ \
  procedure.typ \
  materials.typ \
  variables_data_strip.typ
 do
  typst compile "$f" "out/${f%.typ}.pdf"
 done
