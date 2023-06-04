# 今日の年を取得
$year = Get-Date -Format "yyyy"
$year = ("{0}年" -f $year)

# Weeklyreportフォルダパスを格納
$targetDirectory = Join-Path ([Environment]::GetFolderPath("Desktop")) -ChildPath 'Weeklyreport'

# 年度フォルダのパスを作成
$yearFolder = Join-Path $targetDirectory -ChildPath $year

# 年度フォルダを作成（存在しない場合のみ）
if (-not (Test-Path $yearFolder)) {
    # New-Item -ItemType Directory -Path $yearFolder | Out-Null
    New-Item $yearFolder -ItemType Directory | Out-Null
}

# 月ごとのフォルダを作成
1..12 | ForEach-Object {
    $month = $_.ToString("00")
    $monthFolder = Join-Path -Path $yearFolder -ChildPath ("{0}月" -f $month)

    # 月のフォルダを作成（存在しない場合のみ）
    if (-not (Test-Path $monthFolder)) {
        # New-Item -ItemType Directory -Path $monthFolder | Out-Null
        New-Item $monthFolder -ItemType Directory | Out-Null
    }
}