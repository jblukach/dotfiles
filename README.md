# dotfiles

### Validate AWS CLI Installation

```
aws --version
```

### Login to AWS IAM Identity Center

```
aws configure sso --use-device-code
```

### Validate AWS CDK Installation


```
cdk version
npm list -g aws-cdk-lib
```

### CDK NAG Suppressions

```
python3 /workspaces/nag.py
```

https://constructs.dev/packages/cdk-nag/v/2.28.137?lang=python

### Validate Rust Installation

```
rustc --version
```

### Validate Cargo Installation

```
cargo --version
```
