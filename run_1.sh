HF_HUB_DISABLE_IMPLICIT_TOKEN=1 \
HF_ENDPOINT=https://huggingface.co \
FP16=0 \
TASK_MODE=glue \
TASK_NAME=sst2 \
MODEL_NAME_OR_PATH=prajjwal1/bert-tiny \
MAX_SEQ_LENGTH=128 \
MAX_STEPS=100 \
OUTPUT_DIR=outputs/ \
bash scripts/run_chunkft.sh 4 1 -- \
--eval_metric metrics/glue/glue.py --save_safetensors false
#-- --tokenizer_name google-bert/bert-base-uncased