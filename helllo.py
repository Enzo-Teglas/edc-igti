print("teste")
from google.cloud import storage


def create_bucket(bucket_name):
    """Creates a new bucket."""
    bucket_name = "datalake-enzo-t-raw"

    storage_client = storage.Client()

    bucket = storage_client.create_bucket(bucket_name)

    print(f"Bucket {bucket.name} created")