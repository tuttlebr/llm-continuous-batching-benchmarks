#!/bin/bash
set -e
set -o pipefail
/benchmarking/benchmark_configs/vllm_variable_size
/benchmarking/benchmark_configs/vllm_variable_size_latency
# python3 /benchmarking/launch_scripts/launch_vllm \
#     --port ${PORT} \
#     --model ${TRANSFORMERS_MODEL} \
#     --max-num-batched-tokens 8100 \
#     --use-np-weights \
#     2>&1 &

# python3 /benchmarking/benchmark_throughput.py \
#     --backend vLLM \
#     --results_filename /results/vLLM.log \
#     --port ${PORT} \
#     --random_prompt_lens_mean ${RANDOM_PROMPT_LENS_MEAN} \
#     --random_prompt_lens_range ${RANDOM_PROMPT_LENS_RANGE} \
#     --gen_random_prompts \
#     --random_prompt_count ${RANDOM_PROMPT_COUNT} \
#     --distribution ${DISTRIBUTION} \
#     --qps ${QPS} \
#     --variable_response_lens_mean ${VARIABLE_RESPONSE_LENS_MEAN} \
#     --variable_response_lens_range ${VARIABLE_RESPONSE_LENS_RANGE} \
#     --allow_variable_generation_length