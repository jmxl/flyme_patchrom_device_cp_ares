.class public Landroid/content/res/theme/ZsWeatherUtils;
.super Ljava/lang/Object;
.source "ZsWeatherUtils.java"


# static fields
.field public static DEFAULT_SHADOW_RADIUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZsWeatherUtils"

.field private static final WEATHER_URI:Ljava/lang/String; = "content://com.icoolme.zmweather.ExternalProvider/actual_weather"

.field public static final ZS_DIN_REGULAR:Ljava/lang/String; = "zs-din-light"

.field private static cursor:Landroid/database/Cursor;

.field private static mLock:Ljava/lang/Object;

.field private static weather:Landroid/content/res/theme/Weather;


# direct methods
.method static synthetic -get0()Landroid/database/Cursor;
    .locals 1

    sget-object v0, Landroid/content/res/theme/ZsWeatherUtils;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/content/res/theme/ZsWeatherUtils;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    sput-object p0, Landroid/content/res/theme/ZsWeatherUtils;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic -set1(Landroid/content/res/theme/Weather;)Landroid/content/res/theme/Weather;
    .locals 0

    sput-object p0, Landroid/content/res/theme/ZsWeatherUtils;->weather:Landroid/content/res/theme/Weather;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/theme/ZsWeatherUtils;->mLock:Ljava/lang/Object;

    .line 52
    sput-object v1, Landroid/content/res/theme/ZsWeatherUtils;->cursor:Landroid/database/Cursor;

    .line 53
    sput-object v1, Landroid/content/res/theme/ZsWeatherUtils;->weather:Landroid/content/res/theme/Weather;

    .line 108
    const/16 v0, 0xe

    sput v0, Landroid/content/res/theme/ZsWeatherUtils;->DEFAULT_SHADOW_RADIUS:I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createZsDynamicWeatherIcon(Landroid/content/res/Resources;Landroid/content/res/theme/Weather;)Landroid/graphics/drawable/Drawable;
    .locals 25
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "weather"    # Landroid/content/res/theme/Weather;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance p1, Landroid/content/res/theme/Weather;

    .end local p1    # "weather":Landroid/content/res/theme/Weather;
    const-string/jumbo v21, "0"

    const-string/jumbo v22, "default"

    const-string/jumbo v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/theme/Weather;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .restart local p1    # "weather":Landroid/content/res/theme/Weather;
    const-string/jumbo v21, "ZsWeatherUtils"

    const-string/jumbo v22, "createZsDynamicWeatherIcon-->weather = null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const-string/jumbo v21, "ZsWeatherUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "creat weather : current temp = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/theme/Weather;->mCurTemp:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",iconFilePath = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v17, 0x0

    .line 118
    .local v17, "weatherBgBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_1

    .line 120
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/theme/ZsWeatherUtils;->getWeatherDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 121
    .local v17, "weatherBgBitmap":Landroid/graphics/Bitmap;
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 122
    const-string/jumbo v21, "ZsWeatherUtils"

    const-string/jumbo v22, "createZsDynamicWeatherIcon -use : weather.mIconFilePath"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v17    # "weatherBgBitmap":Landroid/graphics/Bitmap;
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/theme/Weather;->mCurTemp:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "default"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 132
    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v21

    .line 123
    :catch_0
    move-exception v7

    .line 124
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "ZsWeatherUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getWeatherDrawable failed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v7    # "e":Ljava/lang/Exception;
    .local v17, "weatherBgBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v21, "ZsWeatherUtils"

    const-string/jumbo v22, "createZsDynamicWeatherIcon - use : weather.mResId"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/theme/Weather;->mResId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .local v17, "weatherBgBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 135
    .end local v17    # "weatherBgBitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v8, "mIconCanvas":Landroid/graphics/Canvas;
    const v21, 0x1050182

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v9, v0

    .line 140
    .local v9, "mIconSize":I
    const v21, 0x1060126

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    .line 141
    .local v11, "textColor":I
    const v21, 0x1050184

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 142
    .local v12, "textSize":F
    const v21, 0x1050185

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 144
    .local v5, "degrees_size":F
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->getWeatherTheme()Landroid/content/res/theme/WeatherTheme;

    move-result-object v18

    .line 145
    .local v18, "weatherTheme":Landroid/content/res/theme/WeatherTheme;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/theme/WeatherTheme;->getTextSize()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_3

    .line 146
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/theme/WeatherTheme;->getTextSize()F

    move-result v12

    .line 147
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/theme/WeatherTheme;->getTextSize()F

    move-result v5

    .line 149
    :cond_3
    const-string/jumbo v21, "ZsWeatherUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "creat weather :->2 textSize = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",degrees_size = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", mIconSize = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v10, Landroid/graphics/Paint;

    const/16 v21, 0x101

    move/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 152
    .local v10, "tempPaint":Landroid/graphics/Paint;
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    const-string/jumbo v21, "zs-din-light"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v16

    .line 155
    .local v16, "tf":Landroid/graphics/Typeface;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 156
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 157
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/res/theme/Weather;->mCurTemp:Ljava/lang/String;

    .line 159
    .local v13, "textTemp":Ljava/lang/String;
    const-string/jumbo v21, "\u00b0"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 161
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 162
    .local v4, "bound":Landroid/graphics/Rect;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v10, v13, v0, v1, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 164
    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v15, v0

    .line 165
    .local v15, "textwidth":I
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v19, v0

    .line 166
    .local v19, "x":F
    div-int/lit8 v21, v9, 0x3

    sget v22, Landroid/content/res/theme/ZsWeatherUtils;->DEFAULT_SHADOW_RADIUS:I

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 167
    .local v20, "y":F
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v13, v0, v1, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 168
    const-string/jumbo v21, "ZsWeatherUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "creat weather :->3 textTemp = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ",x = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", y = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v14, v0

    .line 171
    .local v14, "text_top":I
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v6, v0

    .line 174
    .local v6, "degrees_top":I
    const-string/jumbo v21, "ZsWeatherUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "creat weather :->4 \u00b0,text_top = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", degrees_top = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string/jumbo v21, "\u00b0"

    int-to-float v0, v15

    move/from16 v22, v0

    add-float v22, v22, v19

    const/high16 v23, 0x40000000    # 2.0f

    add-float v22, v22, v23

    int-to-float v0, v14

    move/from16 v23, v0

    add-float v23, v23, v20

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    const-string/jumbo v21, "ZsWeatherUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "creat weather :->5 \u00b0,x+textwidth+2 = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    int-to-float v0, v15

    move/from16 v23, v0

    add-float v23, v23, v19

    const/high16 v24, 0x40000000    # 2.0f

    add-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", (y+text_top-degrees_top) = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    int-to-float v0, v14

    move/from16 v23, v0

    add-float v23, v23, v20

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 178
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v21
.end method

.method public static getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/WeatherTheme;
    .locals 10
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v6, Landroid/content/res/theme/WeatherTheme;

    invoke-direct {v6}, Landroid/content/res/theme/WeatherTheme;-><init>()V

    .line 241
    .local v6, "weatherTheme":Landroid/content/res/theme/WeatherTheme;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 242
    .local v5, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v7, "UTF-8"

    invoke-interface {v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 243
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 244
    .local v4, "event":I
    :goto_0
    const/4 v7, 0x1

    if-eq v4, v7, :cond_4

    .line 245
    packed-switch v4, :pswitch_data_0

    .line 276
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 249
    :pswitch_1
    const-string/jumbo v7, "margin_top"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 250
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 251
    .local v1, "dayMarginTop":F
    const-string/jumbo v7, "ZsWeatherUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dayMarginTop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v6, v1}, Landroid/content/res/theme/WeatherTheme;->setMarginTop(F)V

    .line 254
    .end local v1    # "dayMarginTop":F
    :cond_1
    const-string/jumbo v7, "margin_left"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 255
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 256
    .local v0, "dayMarginLeft":F
    const-string/jumbo v7, "ZsWeatherUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dayMarginLeft = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v6, v0}, Landroid/content/res/theme/WeatherTheme;->setMarginLeft(F)V

    .line 259
    .end local v0    # "dayMarginLeft":F
    :cond_2
    const-string/jumbo v7, "text_size"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 260
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 261
    .local v3, "dayTextSize":F
    const-string/jumbo v7, "ZsWeatherUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dayTextSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v6, v3}, Landroid/content/res/theme/WeatherTheme;->setTextSize(F)V

    .line 264
    .end local v3    # "dayTextSize":F
    :cond_3
    const-string/jumbo v7, "text_color"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 265
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 266
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "dayTextColor":Ljava/lang/String;
    const-string/jumbo v7, "ZsWeatherUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dayTextColor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/theme/WeatherTheme;->setTextColor(I)V

    goto/16 :goto_1

    .line 278
    .end local v2    # "dayTextColor":Ljava/lang/String;
    :cond_4
    instance-of v7, v5, Lorg/kxml2/io/KXmlParser;

    if-eqz v7, :cond_5

    .line 279
    nop

    nop

    .end local v5    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v5}, Lorg/kxml2/io/KXmlParser;->close()V

    .line 281
    :cond_5
    return-object v6

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getWeatherDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, 0x0

    .line 186
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    :try_start_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 193
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 192
    invoke-direct {v4, p0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v3    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .local v4, "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    const-string/jumbo v6, "ZsWeatherUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWeatherDrawable -> filePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",iconDrawabale ->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    if-eqz v5, :cond_0

    .line 201
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 195
    :cond_0
    :goto_1
    return-object v4

    .line 187
    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .line 189
    .restart local v5    # "is":Ljava/io/InputStream;
    const-string/jumbo v6, "ZsWeatherUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWeatherDrawable failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v2

    .line 197
    .end local v3    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v6, "ZsWeatherUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWeatherDrawable failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    if-eqz v5, :cond_1

    .line 201
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :cond_1
    :goto_3
    return-object v3

    .line 202
    :catch_3
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 199
    :goto_4
    if-eqz v5, :cond_2

    .line 201
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 198
    :cond_2
    :goto_5
    throw v6

    .line 202
    :catch_4
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .local v3, "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_4

    .line 196
    .end local v3    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "iconDrawabale":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2
.end method

.method public static getWeatherFromJson(Ljava/lang/String;)Landroid/content/res/theme/Weather;
    .locals 9
    .param p0, "Json"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v6, "city"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "cityName":Ljava/lang/String;
    const-string/jumbo v6, "weaCode"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "weaCode":Ljava/lang/String;
    const-string/jumbo v6, "curTemp"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "curTemp":Ljava/lang/String;
    new-instance v5, Landroid/content/res/theme/Weather;

    invoke-direct {v5, v4, v1, v0}, Landroid/content/res/theme/Weather;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v5, "weather":Landroid/content/res/theme/Weather;
    const-string/jumbo v6, "ZsWeatherUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWeatherFromJson -> cityName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",weaCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",curTemp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object v5

    .line 45
    .end local v0    # "cityName":Ljava/lang/String;
    .end local v1    # "curTemp":Ljava/lang/String;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "weaCode":Ljava/lang/String;
    .end local v5    # "weather":Landroid/content/res/theme/Weather;
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    const/4 v6, 0x0

    return-object v6
.end method

.method public static getWeatherFromURI(Landroid/content/Context;)Landroid/content/res/theme/Weather;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 55
    const-string/jumbo v3, "content://com.icoolme.zmweather.ExternalProvider/actual_weather"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 56
    .local v2, "uri":Landroid/net/Uri;
    if-nez p0, :cond_0

    .line 57
    const-string/jumbo v3, "ZsWeatherUtils"

    const-string/jumbo v4, "getWeatherFromURI context == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v5

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 61
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 62
    const-string/jumbo v3, "ZsWeatherUtils"

    const-string/jumbo v4, "getWeatherFromURI resolver == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v5

    .line 65
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/content/res/theme/ZsWeatherUtils$1;

    invoke-direct {v4, v1, v2}, Landroid/content/res/theme/ZsWeatherUtils$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 98
    :try_start_0
    sget-object v4, Landroid/content/res/theme/ZsWeatherUtils;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    sget-object v3, Landroid/content/res/theme/ZsWeatherUtils;->mLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :goto_0
    sget-object v3, Landroid/content/res/theme/ZsWeatherUtils;->weather:Landroid/content/res/theme/Weather;

    return-object v3

    .line 98
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getWeatherTheme()Landroid/content/res/theme/WeatherTheme;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 211
    const-string/jumbo v7, "manifest.xml"

    invoke-static {v7}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "manifestFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v4, "manifestFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/content/res/theme/ZsWeatherUtils;->getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/WeatherTheme;

    move-result-object v6

    .line 219
    .local v6, "theme":Landroid/content/res/theme/WeatherTheme;
    if-eqz v6, :cond_1

    .line 220
    const-string/jumbo v7, "ZsWeatherUtils"

    const-string/jumbo v8, "getWeatherTheme not null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    if-eqz v3, :cond_0

    .line 229
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-object v6

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    const-string/jumbo v7, "ZsWeatherUtils"

    const-string/jumbo v8, "getWeatherTheme --> null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    if-eqz v3, :cond_2

    .line 229
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 236
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v6    # "theme":Landroid/content/res/theme/WeatherTheme;
    :cond_2
    :goto_1
    return-object v9

    .line 230
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "theme":Landroid/content/res/theme/WeatherTheme;
    :catch_1
    move-exception v0

    .line 231
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v6    # "theme":Landroid/content/res/theme/WeatherTheme;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 225
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    if-eqz v2, :cond_2

    .line 229
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 230
    :catch_3
    move-exception v0

    .line 231
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 227
    :goto_3
    if-eqz v2, :cond_3

    .line 229
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 226
    :cond_3
    :goto_4
    throw v7

    .line 230
    :catch_4
    move-exception v0

    .line 231
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 224
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method
