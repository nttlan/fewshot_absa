


export GPU=$1
export MODEL=$2
export TEST_DATASET=$3
export SUBTASK=$4
export CHECKPOINT=$5


export TEST_FILE=./resources/gpt2/${TEST_DATASET}.txt

CUDA_VISIBLE_DEVICES=$GPU python main.py \
    --dataset=$TRAIN_DATASET \
    --train_data_file=$TRAIN_FILE \
    --model_name_or_path=$MODEL_NAME \
    --output_dir=$OUTPUT \
    --model_type=$MODEL \
    --subtask=$SUBTASK \
    --eval_checkpoint=$CHECKPOINT \
    --do_eval \
    --eval_data_file=$TEST_FILE \
    --eval_splits test
