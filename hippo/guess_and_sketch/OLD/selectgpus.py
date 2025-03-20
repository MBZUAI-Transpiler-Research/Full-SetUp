import torch

def select_gpus(threshold=0.1):  # Threshold in utilization rate for "reasonably free"
    if not torch.cuda.is_available():
        print("No GPUs available. Using CPU.")
        return "cpu"

    free_gpus = []
    for i in range(torch.cuda.device_count()):
        total_memory = torch.cuda.get_device_properties(i).total_memory // (1024 ** 2)  # Convert to MB
        reserved_memory = torch.cuda.memory_reserved(i) // (1024 ** 2)
        util_rate = reserved_memory / total_memory

        if util_rate < threshold:  # Consider it "free" if it has more than `threshold` MB available
            free_gpus.append((util_rate, i))

    if len(free_gpus) >= 1:
        free_gpus.sort()  
        best_gpu = free_gpus[0][1] 
        return f"cuda:{best_gpu}"
    else:
        print("No sufficiently free GPUs found. Using CPU.")
        return "cpu"  # Fallback
