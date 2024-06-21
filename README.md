# sql-level1
## 対象
未経験者

## 想定学習時間
24時間程度

## 前提
* プログラミング言語を操作したことがある

## 目標
* プログラミングを初めて学習する人が学ぶための教材です
* SQLの基礎的な文法の習得
* SELECT, INSERT, UPDATE, DELETE, 結合

## インストール
```
git clone https://github.com/programmingkids/sql-level1.git
cd sql-level1
chmod +x install.sh
./install.sh
```

## 5章の最終問題を行う前に
書き込み式SQLの本を1章から4章まで学習します。  
4章の学習終了後、5章として最終問題を行います。  
最終問題を行う前に、以下のコマンドを実行します。  

```
cd sql-level1
./create_chapter05_exam.sh
```

## 学習手順
SQLの学習手順ですが、以下のようになります

（１）事前に教本を購入しておく  
（２）git clone  
生徒側で学習最初にgit cloneを行います  
  
```
git clone https://github.com/programmingkids/sql-level1.git
cd sql-level1
chmod +x install.sh
./install.sh
```
  
（３）DBのインストールは不要  
教本では自分のPCにMySQLをインストールするように指定されていますが、その作業は不要です。DB（実際にはMariaDB）は上記コマンドでワークスペースに構築しています。そのため、自分のPCにDBを構築することは不要です  
  
（４）教本の0章  
教本の0章を読んでDBの考え方、テーブルの仕組み、テーブル構造について学習する（重ねますが、MySQLのインストールは不要）  
  
（５）1章から3章まで学習  
各フォルダーのファイルにSQLを入力して「RUN」を実行するとコンソールに実行結果を表示します。各セクションのワークと練習問題をこなして進めていきます。  
  
後半の課題は難易度が高いので、ほとんど自力で解決できません。そのため、教本の巻末の答えを参考にしても構いません  
  
2章セクション6の練習問題2、練習問題4、練習問題5は行いません。MariaDB（MySQL）はMINUS、EXCEPTなどの演算子に未対応だからです  
  
（６）4章は読むだけ  
4章はテーブルの作成などのSQLです。ここは読むだけで構いません。実際のSQL構築作業は不要です。動作確認を行うのが難しいので学習としては意味がないからです。テーブル構築に関しては、Djangoの学習で登場します  

（7）最終問題  
教本の学習終了後、最終問題を行います。以下のコマンドを実行して、最終問題の環境を構築します。  
  
```
cd sql-level1
./create_chapter05_exam.sh
```
  
最終問題の問題文は学習システムに記載されています。回答となるSQLをワークスペースで作成します  
  
https://laplace.programmingkids.net/dashboard/learning/index/sql-level1  
  
実行結果の通りにSQLを作成できていればOKとします  
  
