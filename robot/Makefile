
build:
	mkdir -p build

build/robot.jar: | build
	curl -L -o build/robot.jar "https://github.com/ontodev/robot/releases/latest/download/robot.jar"

ROBOT := java -jar build/robot.jar

report: build/robot.jar
	$(ROBOT) report --input ../development/TransparentRelationsOntology.ttl --profile tro_report_profile --output report.html

reason: build/robot.jar
	$(ROBOT) reason --reasoner ELK --input ../development/TransparentRelationsOntology.ttl

verify: build/robot.jar
	$(ROBOT) verify --input ../development/TransparentRelationsOntology.ttl --queries verify-comment.rq --output-dir report

quality: report reason verify