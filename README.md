# aws-ps1

Show your `AWS_PROFILE` environment variable in your prompt terminal

## Usage

clone this repo in your home directory and add these line in your `.bashrc`

```
source ~/aws-ps1/aws-ps1.sh
PS1='[\u@\h \W $(aws_ps1)]\$ '
awson
export AWS_PROFILE=myaccount
```
