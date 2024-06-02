# 課題について

基本はstoryboardやxibを使わずにコードでやること

# 課題1

新規プロジェクトを作成してMain.storyboardを削除する

Main.storyboardを読み込む設定を2箇所削除する

Windowを立ち上げてViewControllerを読み込ませる

## 参考
https://github.com/sakiyamaK/NoStoryboardProject
のふたつの画像の設定箇所を消す

# 課題2

全画面表示で画像を表示させる制約を貼る

## 参考
FullScreenImageViewController.swift

# 課題3

セーフエリア内表示で画像を表示させる制約を貼る

## 参考
SafeAreaImageViewController.swift

# 課題4

画面の真ん中にボタンを置く制約を貼る

ボタンをタップするとログを出力させる

## 参考
CenterButtonViewController.swift

# 課題5

UIStackViewを使って画面に画像とボタンが縦に並ぶようにする

## 参考
StackViewController.swift

# 課題6

UIStackViewを使って画面に画像とボタンが縦に並ぶようにする

ボタンをタップしたら別の画面に遷移するようにする

* SceneDelegate.swiftでUINavigationControllerをrootViewControllerにする

## 参考
SeniStackViewController.swift

# 課題7

下にタブを置いて複数の画面を切り替えられるようにする

## 参考
SceneDelegate.swiftの課題7のコメントアウト

# 課題8

画面の上部にUILabelを使って文字を表示させる

UILabelの縦方向に余白ができないようにする

ただし、高さの最大は画面の半分までにする

## 参考
TopLabelViewController.swift

# 課題9

高さが100のUILabelを複数縦に並べる

ただし、画面の高さを超える場合はスクロールして、超えない場合は下に余白ができるようにする

## 参考
ScrollStackViewController.swift

# 課題 10

横スクロールでページが切り替わるようなUIを作る

各ページの画面の中央にUILabelでページ番号を表示する

* UIScrollViewのisPagingEnabledをtrueにする

## 参考
PagingViewController.swift

# 課題 11

tiktok.pngと同じレイアウトを用意する

* 画像はsystem imageの利用法を参考にする

https://tommy10344.hatenablog.com/entry/2019/11/03/141523

## 参考
TiktokViewController.swift
