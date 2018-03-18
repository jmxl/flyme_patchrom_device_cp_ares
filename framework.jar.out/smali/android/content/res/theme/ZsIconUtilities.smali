.class public Landroid/content/res/theme/ZsIconUtilities;
.super Ljava/lang/Object;
.source "ZsIconUtilities.java"


# static fields
.field private static final BOTTOM_PLATE:Ljava/lang/String; = "bottom_plate"

.field private static final LEFT:I = 0x1

.field private static final LEFT_BOTTOM:I = 0x3

.field private static final MATCH_AREA:I = 0x3

.field public static final MATCH_AT_FIRST_TIME:I = 0x1

.field public static final MATCH_AT_NONE_TIME:I = 0x0

.field public static final MATCH_AT_SECOND_TIME:I = 0x2

.field private static final RIGHT:I = 0x2

.field private static final RIGHT_BOTTOM:I = 0x4

.field private static final SHADE_GLOBAL_ICON_NAME:Ljava/lang/String; = "zs_shade_global"

.field private static final START_COORDINATE:[I

.field private static final TAG:Ljava/lang/String; = "ZsIconUtilities"

.field private static ZOOM_THREE_PARTY_TO_SIZE:I

.field private static ZOOM_THREE_PARTY_TO_SIZE_SECOND:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 24
    const/16 v0, 0x9e

    sput v0, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE:I

    .line 25
    sget v0, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE_SECOND:I

    .line 31
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "matchTime"    # I

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v13, 0x0

    return-object v13

    .line 49
    :cond_0
    const-string/jumbo v13, "zs_shade_global"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/content/res/theme/ZsIconCustomHelper;->getDrawableFromCommonFilePath(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 50
    .local v4, "maskIcon":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_1

    .line 51
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    return-object v13

    .line 53
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    const/4 v10, 0x0

    .line 57
    .local v10, "sourceBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v13, "ZsIconUtilities"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "res.getConfiguration().densityDpi = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v14, 0x140

    if-ne v13, v14, :cond_2

    .line 59
    const/16 v13, 0x6c

    sput v13, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE:I

    .line 63
    :goto_0
    sget v13, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE:I

    add-int/lit8 v13, v13, 0x2

    sput v13, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE_SECOND:I

    .line 64
    const/4 v13, 0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    move-object/from16 v13, p1

    .line 65
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 66
    .local v10, "sourceBitmap":Landroid/graphics/Bitmap;
    invoke-static {v10}, Landroid/content/res/theme/ZsIconUtilities;->getIconWithoutTransparent(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 67
    sget v13, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE_SECOND:I

    sget v14, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE_SECOND:I

    const/4 v15, 0x1

    invoke-static {v10, v13, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_1
    move-object v13, v4

    .line 71
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 72
    .local v5, "normalBitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_4

    .line 73
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    return-object v13

    .line 61
    .end local v5    # "normalBitmap":Landroid/graphics/Bitmap;
    .local v10, "sourceBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v13, 0x9e

    sput v13, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE:I

    goto :goto_0

    .line 69
    :cond_3
    sget v13, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE:I

    sget v14, Landroid/content/res/theme/ZsIconUtilities;->ZOOM_THREE_PARTY_TO_SIZE:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13, v14}, Landroid/content/res/theme/ZsIconUtilities;->getSpecifiedIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "sourceBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 75
    .restart local v5    # "normalBitmap":Landroid/graphics/Bitmap;
    :cond_4
    if-nez v5, :cond_5

    .line 76
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    return-object v13

    .line 78
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v11, v13, 0x2

    .line 79
    .local v11, "startX":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v12, v13, 0x2

    .line 80
    .local v12, "startY":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 82
    .local v3, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v9, v15, v0, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .local v9, "round":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v7, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 85
    .local v7, "rectD":Landroid/graphics/RectF;
    int-to-float v13, v11

    int-to-float v14, v12

    invoke-virtual {v2, v5, v13, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    invoke-virtual {v2, v10, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-static {v3, v11, v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 91
    .local v8, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    return-object v8
.end method

.method public static getIconBitmapSize(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 205
    const v0, 0x1050182

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static getIconWithoutTransparent(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 96
    if-nez p0, :cond_0

    .line 97
    return-object v7

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 101
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 102
    .local v0, "bitmapHeight":I
    div-int/lit8 v3, v1, 0x2

    .line 103
    .local v3, "halfBitmapWidth":I
    div-int/lit8 v2, v0, 0x2

    .line 104
    .local v2, "halfBitmapHeight":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 106
    invoke-virtual {p0, v4, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_5

    .line 107
    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 112
    :cond_1
    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-le v4, v3, :cond_2

    .line 113
    invoke-virtual {p0, v4, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_6

    .line 114
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 119
    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    .line 120
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_7

    .line 121
    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 126
    :cond_3
    add-int/lit8 v4, v0, -0x1

    :goto_3
    if-le v4, v2, :cond_4

    .line 127
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_8

    .line 128
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 132
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_9

    .line 133
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-static {p0, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 105
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 119
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 126
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 135
    :cond_9
    return-object v7
.end method

.method private static getSpecifiedIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 195
    if-gtz p2, :cond_0

    invoke-static {p0}, Landroid/content/res/theme/ZsIconUtilities;->getIconBitmapSize(Landroid/content/res/Resources;)I

    move-result p2

    .line 196
    :cond_0
    if-gtz p3, :cond_1

    invoke-static {p0}, Landroid/content/res/theme/ZsIconUtilities;->getIconBitmapSize(Landroid/content/res/Resources;)I

    move-result p3

    .line 197
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 198
    nop

    nop

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, "sourceBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 201
    .end local v0    # "sourceBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getThirdPartyAlienIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    const/4 v8, 0x0

    return-object v8

    .line 245
    :cond_0
    const-string/jumbo v8, "bottom_plate"

    invoke-static {p0, v8}, Landroid/content/res/theme/ZsIconCustomHelper;->getDrawableFromCommonFilePath(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 246
    .local v2, "maskIcon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 247
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8

    .line 249
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 250
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    invoke-static {p0}, Landroid/content/res/theme/ZsIconUtilities;->getIconBitmapSize(Landroid/content/res/Resources;)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {p0}, Landroid/content/res/theme/ZsIconUtilities;->getIconBitmapSize(Landroid/content/res/Resources;)I

    move-result v9

    int-to-double v10, v9

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v10, v12

    double-to-int v9, v10

    invoke-static {p0, p1, v8, v9}, Landroid/content/res/theme/ZsIconUtilities;->getSpecifiedIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 252
    .local v5, "sourceBitmap":Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "maskIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 253
    .local v3, "normalBitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 254
    return-object v3

    .line 256
    :cond_2
    if-nez v3, :cond_3

    .line 257
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8

    .line 259
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 260
    .local v6, "startX":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 262
    .local v7, "startY":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 264
    .local v1, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 265
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v8, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 266
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {v0, v5, v8, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    if-eqz v5, :cond_4

    .line 269
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    :cond_4
    return-object v1
.end method

.method private static isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z
    .locals 7
    .param p0, "direction"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 212
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 213
    packed-switch p0, :pswitch_data_0

    .line 212
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :pswitch_0
    sget-object v2, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v2, v2, v4

    sub-int/2addr v2, v0

    sget-object v3, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v3, v3, v5

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    return v5

    .line 220
    :pswitch_1
    sget-object v2, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v2, v2, v4

    sub-int v2, p2, v2

    add-int/2addr v2, v0

    sget-object v3, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v3, v3, v5

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    return v5

    .line 225
    :pswitch_2
    sget-object v2, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v2, v2, v4

    sub-int/2addr v2, v0

    sget-object v3, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v3, v3, v5

    sub-int v3, p3, v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    return v5

    .line 230
    :pswitch_3
    sget-object v2, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v2, v2, v4

    sub-int v2, p2, v2

    add-int/2addr v2, v0

    sget-object v3, Landroid/content/res/theme/ZsIconUtilities;->START_COORDINATE:[I

    aget v3, v3, v5

    sub-int v3, p3, v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    return v5

    .line 211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "j":I
    :cond_2
    return v4

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isRectangleIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "threePartiesIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v3, 0x90

    const/4 v4, 0x1

    .line 156
    invoke-static {p0, p1, v3, v3}, Landroid/content/res/theme/ZsIconUtilities;->getSpecifiedIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 158
    const/4 v3, 0x0

    return v3

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 161
    .local v2, "bitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 163
    .local v1, "bitmapHeight":I
    invoke-static {v4, v0, v2, v1}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    const/4 v3, 0x2

    invoke-static {v3, v0, v2, v1}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v3

    .line 163
    if-eqz v3, :cond_1

    .line 165
    const/4 v3, 0x3

    invoke-static {v3, v0, v2, v1}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v3

    .line 163
    if-eqz v3, :cond_1

    .line 166
    const/4 v3, 0x4

    invoke-static {v3, v0, v2, v1}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v3

    .line 163
    if-eqz v3, :cond_1

    .line 167
    return v4

    .line 169
    :cond_1
    invoke-static {p0, v0}, Landroid/content/res/theme/ZsIconUtilities;->isRectangleIconTwice(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)I

    move-result v3

    return v3
.end method

.method private static isRectangleIconTwice(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)I
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 176
    invoke-static {p1}, Landroid/content/res/theme/ZsIconUtilities;->getIconWithoutTransparent(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    .local v2, "noTransparentBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 178
    return v4

    .line 180
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 181
    .local v1, "bitmapWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 183
    .local v0, "bitmapHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f666666    # 0.9f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 184
    return v4

    .line 187
    :cond_1
    const/4 v5, 0x1

    invoke-static {v5, v2, v1, v0}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    invoke-static {v3, v2, v1, v0}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v5

    .line 187
    if-eqz v5, :cond_2

    .line 189
    const/4 v5, 0x3

    invoke-static {v5, v2, v1, v0}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v5

    .line 187
    if-eqz v5, :cond_2

    .line 190
    const/4 v5, 0x4

    invoke-static {v5, v2, v1, v0}, Landroid/content/res/theme/ZsIconUtilities;->isMatchCornerRadius(ILandroid/graphics/Bitmap;II)Z

    move-result v5

    .line 187
    if-eqz v5, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    .line 190
    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 140
    if-eqz p0, :cond_1

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 142
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_1

    .line 144
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 145
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 145
    :cond_0
    return v3

    .line 147
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    return v3

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return v3
.end method
