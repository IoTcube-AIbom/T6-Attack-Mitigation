#!/bin/bash

# 1. Install core dependencies
echo "Installing core dependencies..."
pip install transformers==4.36.1 torch torchvision torchaudio
pip install pandas numpy tqdm scikit-learn scipy

# 2. Install acceleration tools (Optional but highly recommended for research)
# Ray and vLLM are essential for high-throughput evaluation.
echo "Installing acceleration tools..."
pip install ray vllm

# 3. Install the SALAD-BENCH package in editable mode
# This allows you to import 'saladbench' from any location.
echo "Installing saladbench package..."
pip install -e .

# 4. Link the model checkpoint
# Replace 'PATH_TO_YOUR_MD_JUDGE' with the actual path where you downloaded the model.
CHECKPOINT_PATH="../checkpoint" 
if [ -d "$CHECKPOINT_PATH" ]; then
    ln -s "$CHECKPOINT_PATH" ./checkpoint
    echo "Successfully linked checkpoint to ./checkpoint"
else
    echo "Warning: Checkpoint not found at $CHECKPOINT_PATH. Please link it manually."
fi

echo "Environment setup complete!"

