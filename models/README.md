# 女性空心站姿模型

- `Female_Body_Hollow_170cm.fbx` 是中性灰女性全身基础网格。双脚着地，双臂自然下垂。
- 模型采用厘米，Z 轴向上，身高 170 cm。外表面与朝向空腔的内表面构成封闭壳体，标称壁厚 0.4 cm。可用剖切查看内壁。
- `Open_in_3dsMax_2024.ms` 可在 3ds Max 2024 中导入模型并保存为原生 `.max` 场景。

## 在 3ds Max 2024 中打开

把 FBX 和脚本放在同一目录。新建空场景，通过 **Scripting → Run Script** 运行脚本。脚本设置系统单位和显示单位为厘米，导入后检查 Z 方向身高，然后弹出保存窗口。

也可以在空场景中进入 **Customize → Units Setup**，将显示单位设为 **Metric → Centimeters**，并在 **System Unit Setup** 设置 **1 Unit = 1 Centimeter**。然后使用 **File → Import → Import** 导入 FBX，保留 FBX 导入器的自动单位转换。
