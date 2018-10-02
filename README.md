# PDF Tools with Docker

## man-page to pdf

    man -t man | docker run --rm -i thomd/pdf-tools ps2pdf - > man.pdf

## watermark

    docker run --rm -v $(pwd):/data thomd/pdf-tools watermark "Confidential" in.pdf out.pdf

## merge

    docker run --rm -v $(pwd):/data thomd/pdf-tools merge in-1.pdf in-2.pdf out.pdf
