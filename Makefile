S3_UPLOAD_CMD = aws s3 cp --acl public-read --cache-control 'max-age=300' --recursive

.PHONY:
deploy: build
	$(S3_UPLOAD_CMD) public/ s3://57blocks.org/

.PHONY:
build:
	@hugo

.PHONY:
serve:
	@hugo serve -w  --bind "0.0.0.0" --port 1313
	#@quarto preview --host "0.0.0.0" --port 1313
