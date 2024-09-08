CURDIR = $(shell pwd)
GENERATEDDIR = ${CURDIR}/generated
PROTODIR = ${CURDIR}/protobuf

sso-generate-proto:
	rm -rf ${GENERATEDDIR}/sso
	mkdir -p ${GENERATEDDIR}
	protoc --proto_path=${PROTODIR} \
	--go_out=${GENERATEDDIR} \
	--go-grpc_out=${GENERATEDDIR} \
	${PROTODIR}/sso/sso.proto 
	go mod tidy