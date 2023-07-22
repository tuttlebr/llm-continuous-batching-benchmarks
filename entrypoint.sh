#!/bin/bash
set -e
set -o pipefail
/benchmarking/benchmark_configs/vllm_variable_size
/benchmarking/benchmark_configs/vllm_variable_size_latency