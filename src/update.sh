# Define dataset path relative to project root
DATA_PATH=data
INPUT_PATH=$DATA_PATH/download
OUTPUT_PATH=$DATA_PATH/mpc-distant

# Create directory if it doesn't exist
mkdir -p $OUTPUT_PATH

# Unpack distant_extended.json.gz
gzip -k -d $INPUT_PATH/distant_extended.json.gz 
mv $INPUT_PATH/distant_extended.json $OUTPUT_PATH/distant_extended.json
# Copy the unpacked file to the mpc-distant-latest directory
cp $INPUT_PATH/Extended_MPCORB_Data_Format_Manual.pdf \
    $OUTPUT_PATH/Extended_MPCORB_Data_Format_Manual.pdf
