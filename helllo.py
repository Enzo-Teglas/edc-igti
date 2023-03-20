print("teste")
from google.cloud import storage
import sys

def create_bucket(bucket_name):
    """Creates a new bucket."""
    bucket_name = "datalake-enzo-t-raw"

    storage_client = storage.Client()

    bucket = storage_client.create_bucket(bucket_name)

    print(f"Bucket {bucket.name} created")

    if __name__ == "__main__":
        create_bucket(bucket_name=sys.argv[1])