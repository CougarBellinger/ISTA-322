# 1. Define source and destination paths
$sourcePath = "pptx-Slides"
$destinationPath = "ISTA-322 Vault\Lecture-Notes"

# 2. Create PowerPoint application object
try {
    $powerPoint = New-Object -ComObject PowerPoint.Application
}
catch {
    Write-Host "Error creating PowerPoint application: $_"
    exit
}

# 3. Get all PPTX files from the source folder
$pptxFiles = Get-ChildItem -Path $sourcePath -Filter *.pptx

# 4. Loop through each PPTX file:
#    a. Construct the output PDF path
#    b. Open the PPTX file
#    c. Save as PDF
#    d. Close the PPTX file
foreach ($pptxFile in $pptxFiles) {
    $pdfFile = Join-Path -Path $destinationPath -ChildPath ($pptxFile.BaseName + ".pdf")

    # TODO: Add script to check if the PDF already exists and ask for confirmation to overwrite

    try {
        $presentation = $powerPoint.Presentations.Open($pptxFile.FullName, [Microsoft.Office.Core.MsoTriState]::msoFalse, [Microsoft.Office.Core.MsoTriState]::msoFalse, [Microsoft.Office.Core.MsoTriState]::msoFalse)
        $presentation.SaveAs($pdfFile, [Microsoft.Office.Interop.PowerPoint.PpSaveAsFileType]::ppSaveAsPDF)
        $presentation.Close()
    }
    catch {
        Write-Host "Error processing $($pptxFile.FullName): $_`n"
    }

    Write-Host "Converted $($pptxFile.Name) to PDF successfully.`n`"$($pdfFile)`"`n"
}

# 5. Release PowerPoint application object
$powerPoint.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($powerPoint)