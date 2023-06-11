# RaiseTech15回課題Readme
CircleCIで下記のworkflowを実行するリポジトリです。

## Workflow
1. リポジトリにコードをpush
2. CircleCIがリポジトリにpushされたことをイベントトリガーとして、workflowを実行
3. Cloudformationを実行
4. Cloudformationによって作成されたAWS環境に対して、ansibleを実行
5. rubyをインストール
6. Serverspecインストール&テストを実行する

## 環境
### aws cli
```
$ aws --version
aws-cli/1.19.112 Python/2.7.18 Linux/4.14.301-224.520.amzn2.x86_64 botocore/1.20.112
```

### ansible
```
$ ansible --version
ansible 2.9.23
```


### ruby
```
$ ruby -v
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]
```


