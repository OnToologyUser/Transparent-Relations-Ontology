
build:
	mkdir -p build

build/robot.jar: | build
	curl -L -o build/robot.jar "https://github.com/ontodev/robot/releases/latest/download/robot.jar"

ROBOT := java -jar build/robot.jar

report: build/robot.jar
	$(ROBOT) report --input ../development/TransparentRelationsOntology.ttl --profile tro_report_profile --output report.html

