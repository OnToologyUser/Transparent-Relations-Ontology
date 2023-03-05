#!/bin/bash 

docker run -ti --rm \
  -v `pwd`/development:/usr/local/widoco/in \
  -v `pwd`/release:/usr/local/widoco/out \
  dgarijo/widoco -ontFile in/TransparentRelationsOntology.ttl -outFolder out -getOntologyMetadata -rewriteAll -includeAnnotationProperties -uniteSections


