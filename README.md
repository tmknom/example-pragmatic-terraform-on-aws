# Pragmatic Terraform on AWS サンプルコード

このリポジトリでは、技術書典6で頒布した『Pragmatic Terraform on AWS 』のサンプルコードを公開しています。

## 使い方

Terraformのバージョンごとにディレクトリを分けています。
tfファイルについては、書籍内のコードのキャプション番号をファイル名にしてあります。
それ以外については、書籍内でファイル名を明示しています。

本リポジトリを写経しようとしてエラーになる場合は、下記の記事を参考に対応してください。

- [『Pragmatic Terraform on AWS』のハマりどころと回避方法](https://nekopunch.hatenablog.com/entry/2019/04/18/094914)

### v0.11

4/14時点のTerraformの正式版バージョンに対応しているコードはこちらです。

v0.12とは非互換ですが、4/14時点のTerraformの正式版を使う場合はこちらのコードを参考にしてください。
Terraformに不慣れな人には、v0.11のほうがオススメです。

### v0.12

書籍掲載のコードは、こちらになります。

技術書典6のタイミングで、v0.12の正式版が出ると踏んでいましたが、4/14日現在正式版未リリースです。
4/14時点では、Terraformの正式版はv0.11であり、v0.12は動作が不安定な可能性があることをご承知おきください。

Terraform v0.12で動かしたい場合は、プロバイダのバイナリファイルを自分でインストールします。
インストールといっても、バイナリファイルを所定のディレクトリに置くだけです。
まずはバイナリの配置先となるディレクトリを作成します。

```shell
$ mkdir -p ~/.terraform.d/plugins
```

次にAWSプロバイダのバイナリファイルをダウンロードします。

- [terraform-provider-aws_1.60.0-dev20190216H00-dev_darwin_amd64.zip](http://terraform-0.12.0-dev-snapshots.s3-website-us-west-2.amazonaws.com/terraform-provider-aws/1.60.0-dev20190216H00-dev/)

また、14章に限り、追加でGitHubプロバイダのバイナリファイルが必要です。

- [terraform-provider-github_1.4.0-dev20190216H00-dev_darwin_amd64.zip](http://terraform-0.12.0-dev-snapshots.s3-website-us-west-2.amazonaws.com/terraform-provider-github/1.4.0-dev20190216H00-dev/)

zipファイルをダウンロードして解凍したら `~/.terraform.d/plugins` ディレクトリにファイルを置いてください。
するとTerraform v0.12でも、`terraform init` が正しく動くようになります。

## License

Apache 2 Licensed. See LICENSE for full details.
