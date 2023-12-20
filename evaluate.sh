export GPU=$1
export MODEL=$2
export MODEL_NAME=$3
export TRAIN_DATASET=$4
export VAL_DATASET=$5
export TEST_DATASET=$6
export SUBTASK=$7
export CHECKPOINT=$8
export OUTPUT_DIR=$9

export TRAIN_FILE=./resources/gpt2/${TRAIN_DATASET}.txt
export VAL_FILE=./resources/gpt2/${VAL_DATASET}.txt
export TEST_FILE=./resources/gpt2/${TEST_DATASET}.txt

CUDA_VISIBLE_DEVICES=$GPU python main.py \
    --dataset=$TRAIN_DATASET \
    --train_data_file=$TRAIN_FILE \
    --model_name_or_path=$MODEL_NAME \
    --output_dir='' \
    --model_type=$MODEL \
    --subtask=$SUBTASK \
    --eval_checkpoint=$CHECKPOINT \
    --do_eval \
    --eval_data_file=$VAL_FILE \
    --test_data_file=$TEST_FILE \
    --eval_splits test \
    --output_dir=$OUTPUT_DIR
