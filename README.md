# LLM Continuous Batching

The code in this repo is a modified fork of the code use in the Anyscale blog [How continuous batching enables 23x throughput in LLM inference while reducing p50 latency](http://anyscale.com/blog/continuous-batching-llm-inference).

## Getting Started

### Environment Variables

The tesring parameters are mostly exposed through environment variables:

```sh
CUDA_MODULE_LOADING=LAZY
CUDA_VISIBLE_DEVICES=0,1
FORCE_CUDA=1

DEBIAN_FRONTEND=noninteractive

SUBNET=172.42.6.0/24
BENCHMARK_IP=172.42.6.2
PORT=8008
RANDOM_PROMPT_LENS_MEAN=1500
RANDOM_PROMPT_LENS_RANGE=100
RANDOM_PROMPT_COUNT=100
DISTRIBUTION=poisson
VARIABLE_RESPONSE_LENS_MEAN=1500
VARIABLE_RESPONSE_LENS_RANGE=0
FIXED_MAX_TOKENS=150

TRANSFORMERS_CACHE=/data/cache
TRANSFORMERS_MODEL=facebook/opt-125m
```

### Start Benchmark

1. Build Docker Image: `docker compose build`
2. Start Docker container: `docker compose up`
