@echo off
chcp 65001 > nul
echo 正在使用 PowerShell 掃描 src 資料夾 (包含修正中文編碼)...
echo ---------------------------------------------------

:: 使用 PowerShell 執行掃描，確保中文不會變成問號
:: 邏輯：取得 src 內所有檔案 -> 算出相對路徑 -> 把反斜線 \ 換成正斜線 / -> 存成 UTF-8 格式
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "$basePath = (Get-Location).Path; " ^
    "Get-ChildItem -Path 'pack' -Recurse -File | ForEach-Object { " ^
    "    $relativePath = $_.FullName.Substring($basePath.Length + 1); " ^
    "    $jsonPath = $relativePath.Replace('\', '/'); " ^
    "    Write-Output $jsonPath " ^
    "} | Out-File 'file_list.txt' -Encoding utf8"

echo ---------------------------------------------------
echo 掃描完成！
echo 請打開 file_list.txt，裡面的中文應該正常了。
pause