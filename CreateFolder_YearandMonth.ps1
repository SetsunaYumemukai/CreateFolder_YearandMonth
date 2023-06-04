# �����̔N���擾
$year = Get-Date -Format "yyyy"
$year = ("{0}�N" -f $year)

# Weeklyreport�t�H���_�p�X���i�[
$targetDirectory = Join-Path ([Environment]::GetFolderPath("Desktop")) -ChildPath 'Weeklyreport'

# �N�x�t�H���_�̃p�X���쐬
$yearFolder = Join-Path $targetDirectory -ChildPath $year

# �N�x�t�H���_���쐬�i���݂��Ȃ��ꍇ�̂݁j
if (-not (Test-Path $yearFolder)) {
    # New-Item -ItemType Directory -Path $yearFolder | Out-Null
    New-Item $yearFolder -ItemType Directory | Out-Null
}

# �����Ƃ̃t�H���_���쐬
1..12 | ForEach-Object {
    $month = $_.ToString("00")
    $monthFolder = Join-Path -Path $yearFolder -ChildPath ("{0}��" -f $month)

    # ���̃t�H���_���쐬�i���݂��Ȃ��ꍇ�̂݁j
    if (-not (Test-Path $monthFolder)) {
        # New-Item -ItemType Directory -Path $monthFolder | Out-Null
        New-Item $monthFolder -ItemType Directory | Out-Null
    }
}