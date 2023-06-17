# Index

<!-- markdownlint=disable MD051 -->
[CreateFolder_YearandMonth](#user-content-1-CreateFolder_YearandMonth)


<!-- markdownlint=disable MD051 -->

# CreateFolder_YearandMonth
Create a year>month folder

# 年月フォルダを作成(Create year and month folders)
以下の図のようにフォルダ作成します。(Create a folder as shown in the following figure.)

## 2023年度フォルダ生成(Create a folder as shown in the following figure.)
あくまで、CreateFolder_YearandMonth.ps1を実行した年度のフォルダが作成されます。
![image](https://github.com/SetsunaYumemukai/CreateFolder_YearandMonth/assets/125370960/37afb4d5-5128-4ce7-bd58-1428823c3b96)

## 2023年度フォルダ直下に01月～12月までのフォルダを作成(Create folders from Jan to Dec directly under the folder created for FY2023)
![image](https://github.com/SetsunaYumemukai/CreateFolder_YearandMonth/assets/125370960/d07471a3-6dd9-457e-83f8-d44e6ae4f747)

# 我のこの年月フォルダ作成.ps1ファイルの使い方(My use of this year/month folder creation .ps1 file)
## タスクスケジューラと連携して年月フォルダを作成(Create year/month folders in conjunction with the task scheduler)
タスクスケジューラと連携してフォルダ作成します。
(Create folders in conjunction with the task scheduler.)

タスクスケジューラとの連携で参考にさせていただいた
URL(URL that you referred us to for the linkage with the task scheduler.)
https://win2012r2.com/2021/08/02/powershell-taskschd/

### 設定画像(Setting image)
#### 全般
![image](https://github.com/SetsunaYumemukai/CreateFolder_YearandMonth/assets/125370960/df213295-d7f0-4325-8069-904e12c9c7cf)

#### トリガー(1月1日に8:30に起動する)(Activate at 8:30 on January 1.)
![image](https://github.com/SetsunaYumemukai/CreateFolder_YearandMonth/assets/125370960/25740535-7d00-4f4b-a4c1-50fdfa5826a1)

#### 操作
![image](https://github.com/SetsunaYumemukai/CreateFolder_YearandMonth/assets/125370960/612c044a-42d4-447d-baa5-e720a206807d)

# 余談
setup.ps1を実行すればCreateFolder_YearandMonth.ps1が自動的に実行される仕組みになっている。
そのため、setup.ps1からCreateFolder_YearandMonth.ps1実行→その後日にちのファイルを作成
などもやろうと思えばできる。
時間があったら日付フォルダ作成の.ps1ファイルも作りたいね。

The system is such that CreateFolder_YearandMonth.ps1 is automatically executed if setup.ps1 is executed.
Therefore, it is possible to run CreateFolder_YearandMonth.ps1 from setup.ps1, then create the files for the days of the year and month.
and so on if you want to do it.
If I had time, I'd like to make a .ps1 file for creating date folders.

※翻訳にはDeepLを使用しています。もし翻訳がおかしかったらごめんね。
※I am using DeepL in my translation. Sorry if the translation is wrong.
