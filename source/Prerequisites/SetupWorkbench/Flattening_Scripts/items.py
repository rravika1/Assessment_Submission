import json
from flatten_json import flatten

# Load JSON data from the file
with open("C:/Users/Ramya Ravikanti/Desktop/Fetch/ValidReceipts.json", 'r') as file:
    data = json.load(file)

# List to store flattened data
flattened_data = []

# Iterate through each receipt
for receipt in data['Receipts']:
    try:
        # Flatten each item in the receipt's receiptItemList
        for item in receipt.get('rewardsReceiptItemList', []):
            flattened_item = flatten(item)
            flattened_item['receipt_id'] = receipt['_id']['$oid']

            # Add additional fields from the receipt

            # Append the flattened item to the list
            flattened_data.append(flattened_item)
    except KeyError as e:
        print(f"KeyError occurred: {e}")

# Write flattened data to a new JSON file
with open("C:/Users/Ramya Ravikanti/Desktop/items_flat.json", 'w') as outfile:
    json.dump(flattened_data, outfile, indent=4)

print("Flattened data has been written to 'items_flat.json'")
