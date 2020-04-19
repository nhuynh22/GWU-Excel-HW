import os
import csv

cereal_csv = os.path.join("..","Resources", "cereal.csv")
#print(cereal_csv)

with open (cereal_csv) as csvfile:
    csvreader = csv.reader(csvfile, delimiter = ',')
    print(csvreader)


     
    csv_header = next(csvreader, None)
    print(f'csv_header:{csv_header}')
    
    for row in csvreader:
        if float(row[7]) >= 5:
            print(row)
        
 