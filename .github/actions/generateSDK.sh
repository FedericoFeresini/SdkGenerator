#!/bin/bash
if [[ -d ./out ]]
then 
	rm -Rf ./out
fi

mkdir ./out

echo "created out directory"

#docker run --rm --name devtest -v "//c/dev/generator/out://local" openapitools/openapi-generator-cli generate \
#    -i https://raw.githubusercontent.com/openapitools/openapi-generator/master/modules/openapi-generator/src/test/resources/3_0/petstore.yaml \
#    -g csharp \
#    -o //local

#docker run --rm --name devtest -v "/${PWD}://local" openapitools/openapi-generator-cli generate \
#    -i //local/mySwagger.json \
#    -g csharp \
#    -o //local/out

