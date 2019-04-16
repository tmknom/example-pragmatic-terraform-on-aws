# Pragmatic Terraform on AWS サンプルコード

このリポジトリでは、技術書典6で頒布した『Pragmatic Terraform on AWS 』のサンプルコードを公開しています。

## 使い方

Terraformのバージョンごとにディレクトリを分けています。
tfファイルについては、書籍内のコードのキャプション番号をファイル名にしてあります。
それ以外については、書籍内でファイル名を明示しています。

### v0.11

4/14時点のTerraformの正式版バージョンに対応しているコードはこちらです。

v0.12とは非互換ですが、4/14時点のTerraformの正式版を使う場合はこちらのコードを参考にしてください。
Terraformに不慣れな人には、v0.11のほうがオススメです。

### v0.12

書籍掲載のコードは、こちらになります。

技術書典6のタイミングで、v0.12の正式版が出ると踏んでいましたが、4/14日現在正式版未リリースです。
4/14時点では、Terraformの正式版はv0.11であり、v0.12は動作が不安定な可能性があることをご承知おきください。

また、AWSプロバイダは自力でダウンロードする必要があります。

詳細は公式の[Announcing Terraform 0.12 Beta 1](https://www.hashicorp.com/blog/announcing-terraform-0-1-2-beta1)
を読んでいただきたいですが、macOSの場合は
[terraform-provider-aws_1.60.0-dev20190216H00-dev_darwin_amd64.zip](http://terraform-0.12.0-dev-snapshots.s3-website-us-west-2.amazonaws.com/terraform-provider-aws/1.60.0-dev20190216H00-dev/)
というファイルをダウンロードして、zipを解凍して、 `~/.terraform.d/plugins` に配置する必要があります。

## License

Apache 2 Licensed. See LICENSE for full details.
