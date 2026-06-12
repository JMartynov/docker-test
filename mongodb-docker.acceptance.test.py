import pymongo
import time
import sys

def run_test():
    client = None
    max_retries = 30
    retry_interval = 2

    print("Starting MongoDB Acceptance Test...")

    for i in range(max_retries):
        try:
            client = pymongo.MongoClient("mongodb://localhost:27017/", serverSelectionTimeoutMS=2000)
            # The ismaster command is cheap and does not require auth.
            client.admin.command('ismaster')
            print("Connected to MongoDB successfully!")
            break
        except Exception as e:
            print(f"Waiting for MongoDB... (Attempt {i+1}/{max_retries}) - Error: {e}")
            time.sleep(retry_interval)
    else:
        print("Failed to connect to MongoDB after multiple attempts.")
        sys.exit(1)

    try:
        db_name = "jules_test_db"
        collection_name = "acceptance_collection"

        db = client[db_name]
        collection = db[collection_name]

        # Clean up if exists
        collection.delete_many({})

        # Insert document
        doc = {
            "name": "jules-test",
            "status": "ok"
        }
        print(f"Inserting document: {doc}")
        result = collection.insert_one(doc)

        # Query and find
        print("Querying for document...")
        found_doc = collection.find_one({"name": "jules-test"})

        if found_doc and found_doc.get("status") == "ok":
            print("Acceptance Test PASSED!")
            sys.exit(0)
        else:
            print(f"Acceptance Test FAILED! Found doc: {found_doc}")
            sys.exit(1)

    except Exception as e:
        print(f"An error occurred during testing: {e}")
        sys.exit(1)
    finally:
        if client:
            client.close()

if __name__ == "__main__":
    run_test()
