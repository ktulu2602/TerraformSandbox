import json
import os

tf_apply_results = json.loads(os.getenv('TF_APPLY_RESULTS'))

print(tf_apply_results)

for k, v in tf_apply_results.items():
    print(k)
