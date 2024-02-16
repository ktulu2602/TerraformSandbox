import json
import os

tf_apply_results = json.loads(os.getenv('TF_APPLY_RESULTS'))

for k, v in tf_apply_results:
    print(k)
