from transformers import AutoTokenizer

model = "prajjwal1/bert-tiny"

tokenizer = AutoTokenizer.from_pretrained(
    model,
    use_fast=True,
    use_auth_token=None,
)

print("OK")