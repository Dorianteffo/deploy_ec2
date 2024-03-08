# Deploy Code on Server

To create the infrastructure on AWS, run the following commands:

```
make tf-init
make tf-plan
make tf-apply
```

For continuous delivery to work, set up the infrastructure with Terraform and define the following repository secrets. You can set up the repository secrets by going to Settings > Secrets > Actions > New repository secret.

* SERVER_SSH_KEY: Obtain this by running `make ec2-private-key` in the project directory and paste the entire content into a new Action secret called SERVER_SSH_KEY.
* REMOTE_HOST: Obtain this by running `make ec2-dns` in the project directory.
* REMOTE_USER: The value for this is `ubuntu`.

Then, with a simple `git push`, the magic happens, and your code is deployed to EC2 (Note: We should set up the Github Actions workflow to run on a pull request, but this is just a proof of concept).