This describes the configuration for the FCIR component.

The results database consists of three tables.

The first table contains a list of additive names with the following columns:
   - additive_name: the name of the additive
   - additive_synonym: the synonym or parent name of the additive (usually the preferred name)

The second table contains a list of lot number names with the following columns:
   - lot_number_name: the name of the lot number
   - additive_name: the additive linked to the lot number

The third table contains the following columns:
   - feeder_check_in_time: the time when the feeder object was manually created or the label was scanned
   - feeder_name: the name of the feeder where the operator is standing at
   - label_image: the binary image file of the label of the additive bag
   - additive_name: the preferred/parent name of the additive in the bag
   - additive_name_on_label: the additive name which is written on the additive bag
   - lot_number_name: the lot number written on the bag
   - status: status of the ai-service process
   - confidence_score: percentage score on how confident the ai is of the resulting text of the scanned image.
   - ocr_text: The whole text scanned from the image
   
