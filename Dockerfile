FROM golang:1.17
#that's where is courant directory when the image is launch in container 
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download
#copy tous de ce dossier courant vers le dossier ou se trouve l'image qui est app
COPY main.go .
#RUN apt -get update && apt -get install  -y curl

EXPOSE 8002
#on va executé le file qu'on a construit à l'etape precedente
CMD [ "go","run","main.go"]
#CMD [ "go","run","tuto.go"]

