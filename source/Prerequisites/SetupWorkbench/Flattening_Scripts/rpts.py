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
        #for item in receipt.get('rewardsReceiptItemList', []):
        flattened_item = flatten(receipt)

            # Add additional fields from the receipt
        '''flattened_item['receipt_id'] = receipt['_id']['$oid']
        flattened_item['receipt_status'] = receipt.get('rewardsReceiptStatus', None)
        flattened_item['total_spent'] = receipt.get('totalSpent', None)
        flattened_item['user_id'] = receipt.get('userId', None)
        flattened_item['finishedDate'] = receipt.get('finishedDate', None)
        flattened_item['purchaseDate'] = receipt.get('purchaseDate', None)
        flattened_item['modifyDate'] = receipt.get('modifyDate', None)
        flattened_item['dateScanned'] = receipt.get('dateScanned', None)
        flattened_item['pointsAwardedDate'] = receipt.get('pointsAwardedDate', None)
        flattened_item['purchasedItemCount'] = receipt.get('purchasedItemCount', None)
        flattened_item['bonusPointsEarned'] = receipt.get('bonusPointsEarned', None)
        flattened_item['createDate'] = receipt.get('createDate', None)
        flattened_item['bonusPointsEarnedReason'] = receipt.get('bonusPointsEarnedReason', None)'''

            # Append the flattened item to the list
        flattened_data.append(flattened_item)
    except KeyError as e:
        print(f"KeyError occurred: {e}")

# Write flattened data to a new JSON file
with open("C:/Users/Ramya Ravikanti/Desktop/rpts_flat.json", 'w') as outfile:
    json.dump(flattened_data, outfile, indent=4)

print("Flattened data has been written to 'flattened_receipts.json'")
