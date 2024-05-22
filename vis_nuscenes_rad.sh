#!/bin/bash

DATA_DIR="./data"
# there should be ${DATA_DIR}/full_v1.0/
# and also ${DATA_DIR}/mini

MODEL_NAME="8x5_5e-4_rad25_18:55:34"

EXP_NAME="rad25" # evaluate rgb00 model

python vis_nuscenes.py \
       --batch_size=1 \
       --exp_name=${EXP_NAME} \
       --dset='mini' \
       --data_dir=$DATA_DIR \
       --img_dir='vis/rad' \
       --log_dir='logs_nuscenes_bevseg' \
       --init_dir="checkpoints/${MODEL_NAME}" \
       --use_radar=True \
       --use_lidar=False \
       --use_metaradar=True \
       --use_radar_filters=False \
       --nsweeps=5 \
       --res_scale=2 \
       --device_ids=[0]