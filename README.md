# ParametricBG

<details open>
<summary><strong>日本語　▲ 🌐 Switch Language</strong></summary>

## 概要

**ParametricBG** は、パラメトリックパターン背景を生成する AviUtl2 のカスタムオブジェクトです。
格子の間隔と図形のサイズを調整することで、水玉模様、通風口のパターン、十字格子、ハーフトーンのテクスチャ背景を作成できます。

**「カスタムオブジェクト → ParametricBG」** から、用途に合わせて選択してください。

- **ParametricBG - リニア**：整列したパターンや、一定方向にサイズが変化するグラデーションを作成します。ノイズによる不規則な変化も加えられます。
- **ParametricBG - シェイプ**：円や多角形、画像の輪郭を基準に、中心から周辺へサイズや密度を変化させます。
- **ParametricBG - イメージ**：参照画像の明暗を図形のサイズや密度に置き換え、ハーフトーン状の画像を作成します。

## インストール方法

`ParametricBG_v1.0.0.au2pkg.zip` を解凍せず、AviUtl2 のプレビュー画面へ直接ドラッグ＆ドロップしてください。

日本語が標準です。英語・簡体中国語の言語ファイルも含まれており、AviUtl2 の言語設定に合わせて表示を切り替えられます。

## 設定項目

使用するスクリプトや選択内容に応じて、表示される項目が変わります。

### 背景

キャンバスサイズ、背景色、不透明度、余白を設定します。出力モードでは、カラー、マスク、反転マスク、透明くり抜きを選べます。

### 形状

10 種類の図形から選択でき、ローカルの PNG・SVG 素材なども読み込めます。長さ・高さ、角丸、線幅、回転、向き、見かけの厚みを調整できます。配色は単色やランダム配色に対応し、素材や参照画像の色を使うこともできます。

### 格子

点の間隔、配置のずらし、回転、ランダムな位置ずれ、発生密度を設定します。格子線の色と不透明度も調整できます。不透明度が `0` のときは格子線を描画しません。

### サイズ分布

図形サイズの変化を設定します。リニアでは変化の方向と長さ、シェイプでは境界形状・中心・半径などを調整します。イメージでは最小サイズを設定します。

リニアの最小サイズは初期値が `100` で、サイズのグラデーションは無効です。値を下げると変化が現れます。

### ノイズ設定（リニア）

サイズ分布に不規則な変化を加えます。強度、スケール、層数、位置、位相を調整できます。強度が `0` のときは無効です。

### エッジ設定（シェイプ）

エッジランダムを有効にすると、中心側の規則的な配置から周辺側の不規則な配置へ変化させられます。整列範囲、エッジのぼかし、密度を調整でき、サイズ分布の反転にも対応します。

### 形状変化

A・B の形状やサイズを、専用の軸またはサイズ分布に合わせて変化させます。変化方向の反転や、回転時に最短ルートを使う設定もできます。

### 画像パンチング（イメージ）

参照画像を選択し、明暗をサイズ・密度・その両方のどれに反映するか設定します。画像の位置、拡大率、回転、コントラストなどを調整でき、元画像やモノクロの元画像を図形の背面に残すこともできます。

### 動き

パターンの移動やサイズの脈動を設定します。リニアではノイズの変化速度も調整できます。

### エフェクト処理

**格子の変形**では、ウェーブ、波紋、渦巻き、膨張・収縮で格子点を移動します。各図形は形を保ったまま移動し、格子線も追従します。速度を設定すると変形が動きます。

**個別エフェクト**では、後続のエフェクトを各図形に個別適用します。カラー出力で使用でき、図形数が多いほど処理負荷が増加します。

</details>

<details>
<summary><strong>中文</strong></summary>

## 概要

**ParametricBG** 是一个生成参数化图案背景的 AviUtl2 自定义物件。
通过调整网格间距和图案大小，可以制作规则点阵、通风孔、十字网格和半色调纹理背景。

从 **“自定义物件（カスタムオブジェクト）→ ParametricBG”** 中，按用途选择：

- **ParametricBG - 线性**：生成规则点阵或沿指定方向变化的尺寸渐变，也可以加入噪波，形成不规则变化。
- **ParametricBG - 图形**：以圆、多边形或图片轮廓为边界，控制图形从中心到边缘的尺寸与密度分布。
- **ParametricBG - 图像**：将参考图片的明暗转换成图形的尺寸或密度，生成网点图像。

## 安装方法

不要解压 `ParametricBG_v1.0.0.au2pkg.zip`，直接将其拖放到 AviUtl2 的预览画面。

默认日语。安装包也包含英文和简体中文语言文件，可随 AviUtl2 的语言设置切换显示。

## 设置分类

不同脚本或选项下，显示的设置项目会有所不同。

### 背景

设置画布尺寸、背景颜色、不透明度和边距。输出方式可选择彩色图案、图形遮罩、反向遮罩或真正透明穿孔。

### 形状

选择图形，包括十种图形，也可以读取本地 PNG 或 SVG 素材等。可以调整长、高、圆角、线宽、旋转、朝向和视觉厚度。颜色支持单色、随机配色，以及使用素材或参考图片的原色。

### 网格

设置点的间距、错列、旋转、随机错位和出现密度，也可以调整网格线的颜色与不透明度。网格不透明度为 `0` 时不绘制网格线。

### 尺寸场

控制图形尺寸的变化。线性脚本可设置渐变方向和长度；图形脚本可设置边界形状、中心及半径等；图像脚本可设置最小尺寸。

线性脚本的最小尺寸默认为 `100`，此时关闭尺寸渐变；降低数值即可产生变化。

### 噪波设置（线性）

为尺寸分布加入不规则变化。可以调整强度、尺度、层数、位置和相位。强度为 `0` 时关闭噪波。

### 边缘设置（图形）

开启边缘随机后，可从中心的规则排列逐渐过渡到边缘的不规则排列。可以调整规则核心、边缘柔和度和密度，并配合尺寸方向反转改变作用方向。

### 形状过渡

让 A、B 两种形状及其尺寸沿独立轴或跟随尺寸场变化。可以反转过渡方向，也可以让旋转走最短路径。

### 图片穿孔（图像）

选择参考图片，将明暗映射到尺寸、密度或两者。可以调整图片位置、缩放、旋转、对比度等，也可以将原图或黑白原图保留在图形背后。

### 动画

设置图案滚动和尺寸呼吸。线性脚本还可以调整噪波随时间变化的速度。

### 效果处理

**网格变形**支持波浪、波纹、旋涡和鼓起／收缩。它只移动网格点，图形保持原状并跟随移动，网格线也同步变化。设置速度后可自动运动。

**逐点效果**用于将后续效果分别应用到每个图形上，可用于彩色输出。图形数量越多，处理负荷越高。

</details>

<details>
<summary><strong>English</strong></summary>

## Overview

**ParametricBG** is an AviUtl2 Custom Object for generating parametric pattern backgrounds.
Adjust grid spacing and shape size to create regular dot patterns, vent patterns, cross grids, and halftone texture backgrounds.

Select a script from **Custom Objects (カスタムオブジェクト) → ParametricBG**:

- **ParametricBG - Linear**: Creates regular patterns or directional size gradients, with optional noise for irregular variation.
- **ParametricBG - Shape**: Uses a circle, polygon, or image contour to control size and density from the center toward the edges.
- **ParametricBG - Image**: Converts the tones of a reference image into shape sizes or density to create a halftone image.

## Installation

Do not extract `ParametricBG_v1.0.0.au2pkg.zip`. Drag and drop it directly onto the AviUtl2 preview window.

Japanese is the default language. English and Simplified Chinese language files are included, allowing the UI to follow the AviUtl2 language setting.

## Settings

The available controls depend on the selected script and options.

### Background

Sets canvas dimensions, background color, opacity, and margins. Output Mode offers color patterns, masks, inverted masks, and transparent cutouts.

### Shape

Select from ten built-in shapes, or load local assets such as PNG and SVG files. Adjust length, height, corner rounding, line width, rotation, orientation, and visual depth. Colors can be solid, randomized, or taken from the asset or reference image.

### Grid

Controls spacing, staggered rows, rotation, position jitter, and density. Grid line color and opacity are also adjustable. Grid lines are disabled when opacity is `0`.

### Size Field

Controls how shape sizes vary. Linear provides gradient direction and length; Shape provides boundary, center, and radius controls; Image provides a minimum size setting.

In Linear, the minimum size defaults to `100`, disabling the size gradient. Lower it to introduce variation.

### Noise Settings (Linear)

Adds irregular variation to the size distribution. Adjust amount, scale, layers, position, and phase. An amount of `0` disables noise.

### Edge Settings (Shape)

Random Edges creates a transition from a regular central arrangement to irregular edges. Adjust the regular region, edge softness, and density, or reverse the size distribution to change the direction.

### Shape Morph

Transitions between shapes A and B and their sizes using a separate axis or the size field. The transition can be reversed, and rotation can follow the shortest path.

### Image Punch (Image)

Selects a reference image and maps its tones to size, density, or both. Adjust image position, scale, rotation, contrast, and related controls. The original or grayscale image can also remain behind the shapes.

### Motion

Controls pattern scrolling and size breathing. Linear also provides a speed control for evolving noise.

### FX Processing

**Grid Deform** moves grid points using Wave, Ripple, Swirl, or Bulge / Pinch. Shapes follow the points without being distorted, and grid lines follow the deformation. Set a speed to animate it.

**Per-dot FX** applies subsequent effects to each shape individually. It is available for color output; more shapes increase processing load.

</details>
