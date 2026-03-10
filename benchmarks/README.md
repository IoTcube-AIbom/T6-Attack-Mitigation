# Benchmark for AI Attack mitigating evaluation

This repository provides a streamlined environment for safety evaluation using the **SALAD-Bench** framework.

## Installation

### Dependencies
The following packages must be installed to run the evaluator:
* `transformers == 4.36.1`
* `torch`
* `vllm`
* `ray`
* `pandas`, `numpy`, `scikit-learn`

### Setup
Execute `setup.sh` to initialize the environment and download the necessary model weights.

```bash
# Run the setup script
bash setup.sh
```
## Quick Start

Once the setup is complete, you can run `verify_setup.py` to confirm the environment is correctly configured and perform a basic safety evaluation.
```Bash
# Verify MD-Judge functionality
python verify_setup.py
```

