(
    local scriptPath = getSourceFileName()
    if scriptPath == undefined then throw "Run this file from Scripting > Run Script."
    local modelPath = (getFilenamePath scriptPath) + "Female_Body_Hollow_170cm.fbx"
    if not (doesFileExist modelPath) then throw "Keep the FBX beside this script."
    if objects.count != 0 then throw "Open an empty scene before running the script."

    units.SystemType = #Centimeters
    units.SystemScale = 1.0
    units.DisplayType = #Metric
    units.MetricType = #Centimeters
    if not (importFile modelPath #noPrompt using:FBXIMP) then throw "FBX import failed."
    if objects.count != 1 then throw "Expected a single body mesh after import."
    local body = objects[1]
    local bounds = nodeGetBoundingBox body (matrix3 1)
    local heightCm = bounds[2].z - bounds[1].z
    if abs (heightCm - 170.0) > 0.1 then throw ("Unexpected Z height in centimeters: " + (heightCm as string))
    select body
    max zoomext sel all
    local outputPath = getSaveFileName caption:"Save the 3ds Max scene"         filename:"Female_Body_Hollow_170cm.max" types:"3ds Max Scene (*.max)|*.max|"
    if outputPath != undefined then saveMaxFile outputPath
)
