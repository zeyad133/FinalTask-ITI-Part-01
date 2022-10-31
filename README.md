For the terraform code

    $ terraform init
    $ terraform plan
    $ terraform apply

Build Docker image for the pyhton app from the Dockerfile, and upload the image to gcr

    $ docker build -t image-name .
    $ docker tag image-name gcr.io/my-project/image-name
    $ docker push gcr.io/my-project/image-name

Pull another redis image from docker hub then push it to gcr
SSH to the private VM:
Install kubectl

    $ sudo apt-get update
    $ sudo snap install kubectl --classic
    $ kubectl --help

authorize gcloud to access the Cloud Platform with Google user credentials

    $ gcloud auth login

SSH to GKE

    copy gke-dep directory
    $ kubectl create -Rf gke-dep
    $ kubectl get svc
