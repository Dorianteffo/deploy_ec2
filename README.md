# Deploy code on Server 
To create the infra on AWS just run 
```
make tf-init 
make tf-plan 
make tf-apply 
```

For the continuous delivery to work, set up the infrastructure with terraform, & defined the following repository secrets. You can set up the repository secrets by going to Settings > Secrets > Actions > New repository secret.

SERVER_SSH_KEY: We can get this by running `make ec2-private-key`in the project directory and paste the entire content in a new Action secret called SERVER_SSH_KEY.
REMOTE_HOST: Get this by running `make ec2-dns` in the project directory.
REMOTE_USER: The value for this is ubuntu.


Then with a simple `git push` the magic operate (we should set the Github actions workflow to run on pull request, but this is just a POC)