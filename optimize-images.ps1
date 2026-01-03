# Image Optimization Script
# This script will help optimize images for the project

Write-Host "Image Optimization Report" -ForegroundColor Green
Write-Host "=========================" -ForegroundColor Green
Write-Host ""

$imgsPath = "imgs"
$images = Get-ChildItem -Path $imgsPath -Include *.png,*.jpg,*.jpeg,*.webp -Recurse

Write-Host "Found $($images.Count) images:" -ForegroundColor Yellow
Write-Host ""

foreach ($img in $images) {
    $sizeKB = [math]::Round($img.Length / 1KB, 2)
    Write-Host "$($img.Name): $sizeKB KB" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "Recommendations:" -ForegroundColor Yellow
Write-Host "1. Convert PNG images to WebP format using online tools or image editing software"
Write-Host "2. Target compression: 85% quality for photos, 90% for logos"
Write-Host "3. Expected size reduction: 30-50%"
Write-Host ""
Write-Host "Suggested tools:" -ForegroundColor Yellow
Write-Host "- Online: squoosh.app, tinypng.com, cloudconvert.com"
Write-Host "- Desktop: XnConvert, GIMP, Photoshop"
Write-Host "- Command line: cwebp (from Google WebP tools)"
