
<u> <b>  BR-001 : Electricity_consumption_difference</b></u>

#### Business Rule  
 - Difference between measured and billed is greater than 2%, then mark the status as 'FAIL'. (?)
 - Difference between measured and billed is less than or equal to 2%, then mark status as 'PASS'.
 - Find the percentage absolute difference between measured value and the billed value, relative to measured value of consumption. 

#### Expected output
 - % difference between billed and measured consumptions  greater than 2% are flagged.

#### Assumption
 - Energy consumption measured in kWh.
 - Allowed difference is 2%

<u> <b>  BR-002 : Longer gap between readings </b></u>

#### Business Rule
 - 2 consecutive meter readings with a longer time gap than normal must be flagged.

#### Expected output
 - Longer time gaps are flagged.

#### Assumption
 - Normal time gap expected is 24 hours (?).

<u> <b> BR-003: Duplicate meter readings</b></u>

#### Business Rule
 - If 2 meter readings are recorded for the same meter_id and  timestamp, then the duplicates must be flagged.

#### Expected output
 - Duplicate record is flagged and removed from system. 

<u> <b> BR-004: Incorrect tariff on total price </b></u>

#### Business Rule
 - If the price on the bill is not the tariff that was valid on that day, flag that record.

#### Expected output
 - Price is recalculated with the correct tariff valid on that day (?)

<u> <b> BR-005: Invalid bill for inactive contract </b></u>

#### Business Rule
 - If a customer receives a bill still when the contract is inactive, the discrepancy must be flagged.

#### Expected output
 - Bills for inactive contracts (outside contract period) must be flagged and removed. (?)


 