# !/usr/bin/evn bash
# -*- encoding: utf-8 -*-

set -x

OUTPUT_DIR="./build"
OUTPUT_NAME="OrzOpenCV"
if [ -d $OUTPUT_DIR ]; then
	rm -rf $OUTPUT_DIR
fi

./opencv/platforms/apple/build_xcframework.py  \
	--out $OUTPUT_DIR \
	--framework_name "$OUTPUT_NAME" \
	--iphoneos_archs "arm64" \
	--iphonesimulator_archs "x86_64" \
	--build_only_specified_archs

cd $OUTPUT_DIR
zip -r "${OUTPUT_NAME}.xcframework.zip" "${OUTPUT_NAME}.xcframework"
mv "${OUTPUT_NAME}.xcframework.zip" ..
cd -
swift package compute-checksum "${OUTPUT_NAME}.xcframework.zip"


