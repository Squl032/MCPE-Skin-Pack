# fix_names_v2.ps1
# 設定來源資料夾
$targetDir = "src"

# 取得所有子資料夾
$folders = Get-ChildItem -Path $targetDir -Directory

$jsonOutput = @()

foreach ($folder in $folders) {
    $files = Get-ChildItem -Path $folder.FullName -Filter "*.png"
    $count = 1
    
    foreach ($file in $files) {
        # 建立新檔名：資料夾名_序號.png (例如 Anon_1.png)
        # 移除非英數字元以防萬一
        $cleanFolderName = $folder.Name -replace "[^a-zA-Z0-9]", ""
        $newName = "${cleanFolderName}_${count}.png"
        
        # 檢查新檔名是否已經存在（避免重複執行時報錯）
        if ($file.Name -ne $newName) {
            # 關鍵修改：使用 -LiteralPath 處理特殊符號 []
            Rename-Item -LiteralPath $file.FullName -NewName $newName -ErrorAction SilentlyContinue
        }
        
        # 產生 JSON 物件
        $skinJson = @{
            "localization_name" = "${cleanFolderName}_${count}"
            "geometry" = "geometry.humanoid.customSlim"
            "texture" = "src/$($folder.Name)/$newName"
            "type" = "free"
        }
        
        # 如果是 Steve 手的角色 (這裡列出例外清單)
        if ($cleanFolderName -match "Dewier|DT|JE") {
             $skinJson["geometry"] = "geometry.humanoid.custom"
        }

        $jsonOutput += $skinJson
        $count++
    }
}

# 輸出 JSON 到螢幕
Write-Host "------------------------------------------------"
Write-Host "檔案改名成功！請將下方 JSON 複製到 skins.json 的 'skins': [ ... ] 裡面"
Write-Host "------------------------------------------------"
$jsonOutput | ConvertTo-Json -Depth 3
Write-Host "------------------------------------------------"
pause