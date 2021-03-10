#!/bin/bash

# Roda 10 vezes a simulação
for i in $(seq 1 2)
do
    python main.py
done

# Gera os DFs de ciclos para cada caso
DIR="/home/rogerio/git/sumo-control/results/crossing"
for dir in $(ls $DIR)
do
    python utils/crossing_report.py $DIR/$dir
done