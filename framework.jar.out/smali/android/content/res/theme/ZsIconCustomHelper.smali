.class public Landroid/content/res/theme/ZsIconCustomHelper;
.super Ljava/lang/Object;
.source "ZsIconCustomHelper.java"


# static fields
.field private static final BACKUP_FOR_MOBILE:Ljava/lang/String; = ".mobile"

.field private static final BACKUP_PACKAGE_NAME:Ljava/lang/String; = "com.journeyui.backup"

.field public static final CALENDAR_JOURNEYOS_PACKAGE_NAME:Ljava/lang/String; = "com.journeyui.calendar"

.field public static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.calendar"

.field public static final CALENDAR_YULONG_PACKAGE_NAME:Ljava/lang/String; = "com.yulong.android.calendar"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZsIconCustomHelper"

.field private static final TEMPLATE:Ljava/lang/String; = "template"

.field private static final TEMPLATE_BASE:Ljava/lang/String; = "base"

.field private static final TEMPLATE_EFFECT:Ljava/lang/String; = "effect"

.field private static final TEMPLATE_WIDTH_1080p:I = 0x90

.field private static final TEMPLATE_WIDTH_2K:I = 0xc0

.field public static final WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.icoolme.zmweather"

.field public static final ZS_DIN_REGULAR:Ljava/lang/String; = "zs-din-light"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDynamicCalendarIcon(Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "iconBt"    # Landroid/graphics/Bitmap;
    .param p1, "calendarTheme"    # Landroid/content/res/theme/CalendarTheme;

    .prologue
    .line 199
    move-object/from16 v9, p1

    .line 200
    .local v9, "theme":Landroid/content/res/theme/CalendarTheme;
    move-object/from16 v2, p0

    .line 201
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 202
    return-object p0

    .line 204
    :cond_0
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 205
    .local v5, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 208
    .local v4, "calendar":Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "E"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v6, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "weekStr":Ljava/lang/String;
    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "dayStr":Ljava/lang/String;
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    .line 213
    .local v8, "paint":Landroid/text/TextPaint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v3, "bound":Landroid/graphics/Rect;
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 216
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->weekMarginTop:F

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-eqz v13, :cond_1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->weekTextColor:I

    if-eqz v13, :cond_1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->weekTextSize:F

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-eqz v13, :cond_1

    .line 217
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->weekTextColor:I

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->weekTextSize:F

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v14, v13, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 221
    iget v13, v3, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/theme/CalendarTheme;->weekMarginLeft:F

    add-float v11, v13, v14

    .line 222
    .local v11, "x":F
    iget v13, v3, Landroid/graphics/Rect;->top:I

    neg-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/theme/CalendarTheme;->weekMarginTop:F

    add-float v12, v13, v14

    .line 223
    .local v12, "y":F
    const-string/jumbo v13, "LeIconCustomHelper_calendar"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "week x is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "  and y is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v5, v10, v11, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 226
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-eqz v13, :cond_2

    .line 227
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 230
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v8, v7, v14, v13, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 231
    iget v13, v3, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/theme/CalendarTheme;->dayMarginLeft:F

    add-float v11, v13, v14

    .line 232
    .restart local v11    # "x":F
    iget v13, v3, Landroid/graphics/Rect;->top:I

    neg-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    add-float v12, v13, v14

    .line 233
    .restart local v12    # "y":F
    const-string/jumbo v13, "LeIconCustomHelper_calendar"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "day x is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "  and y is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v5, v7, v11, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 236
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 237
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    return-object p0
.end method

.method public static createZsDynamicCalendarIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "iconBt"    # Landroid/graphics/Bitmap;
    .param p2, "calendarTheme"    # Landroid/content/res/theme/CalendarTheme;

    .prologue
    .line 145
    move-object/from16 v12, p2

    .line 146
    .local v12, "theme":Landroid/content/res/theme/CalendarTheme;
    move-object/from16 v2, p1

    .line 147
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 150
    .local v4, "calendar":Ljava/util/Calendar;
    const/4 v15, 0x5

    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "dayStr":Ljava/lang/String;
    new-instance v8, Landroid/text/TextPaint;

    const/16 v15, 0x101

    invoke-direct {v8, v15}, Landroid/text/TextPaint;-><init>(I)V

    .line 154
    .local v8, "paint":Landroid/text/TextPaint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .local v3, "bound":Landroid/graphics/Rect;
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 157
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-int v10, v15

    .line 158
    .local v10, "textwidth":I
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget v15, v0, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    if-eqz v15, :cond_0

    move-object/from16 v0, p2

    iget v15, v0, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v15, v16, v18

    if-eqz v15, :cond_0

    .line 159
    move-object/from16 v0, p2

    iget v15, v0, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    move-object/from16 v0, p2

    iget v15, v0, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    const-string/jumbo v15, "zs-din-light"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    .line 162
    .local v11, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 164
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v7, v0, v15, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 165
    iget v15, v3, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/res/theme/CalendarTheme;->dayMarginLeft:F

    move/from16 v16, v0

    add-float v13, v15, v16

    .line 166
    .local v13, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    move/from16 v16, v0

    const/high16 v17, 0x40400000    # 3.0f

    div-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    move/from16 v16, v0

    add-float v14, v15, v16

    .line 168
    .local v14, "y":F
    const-string/jumbo v15, "ZsIconCustomHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "day x is"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  and y is"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",theme.dayMarginTop = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",dayStr = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v15, "ZsIconCustomHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "createZsDynamicCalendarIcon : dayTextSize = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",bitmap.getWidth() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",textwidth = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    invoke-virtual {v5, v7, v13, v14, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 186
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    return-object p1

    .line 171
    .end local v11    # "tf":Landroid/graphics/Typeface;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_0
    const v15, 0x1060125

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 172
    .local v6, "colorInt":I
    const v15, 0x1050183

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 173
    .local v9, "textSize":F
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    const-string/jumbo v15, "zs-din-light"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    .line 176
    .restart local v11    # "tf":Landroid/graphics/Typeface;
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 177
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v7, v0, v15, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 178
    iget v15, v3, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    int-to-float v13, v15

    .line 179
    .restart local v13    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    const/high16 v16, 0x40400000    # 3.0f

    div-float v16, v9, v16

    add-float v14, v15, v16

    .line 180
    .restart local v14    # "y":F
    const-string/jumbo v15, "ZsIconCustomHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "day x is"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  and y is"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",dayStr = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string/jumbo v15, "ZsIconCustomHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "createZsDynamicCalendarIcon : dayTextSize = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",bitmap.getWidth() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",textwidth = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static drawCalendarIcon2png(Landroid/content/res/theme/CalendarTheme;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "calendarTheme"    # Landroid/content/res/theme/CalendarTheme;
    .param p1, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 925
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 926
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 927
    .local v8, "dayStr":Ljava/lang/String;
    const-string/jumbo v14, "ZsIconCustomHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "dayStr is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/theme/CalendarTheme;->imageSrcIdAttri:Ljava/lang/String;

    .line 929
    .local v7, "daySrcId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/theme/CalendarTheme;->imageName:Ljava/lang/String;

    .line 930
    .local v6, "daySrc":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 931
    .local v5, "currentDayPictureName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 932
    const-string/jumbo v14, "#day%31"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 934
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 937
    :cond_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 938
    .local v2, "currentCalendarFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_3

    .line 939
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "currentDayFilePath":Ljava/lang/String;
    const-string/jumbo v14, "ZsIconCustomHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "currentDayFilePath = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 942
    .local v3, "currentDayFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 943
    const/4 v11, 0x0

    .line 945
    .local v11, "iStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .local v12, "iStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 947
    .local v13, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_2

    .line 954
    if-eqz v12, :cond_1

    .line 956
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 948
    :cond_1
    :goto_0
    return-object v13

    .line 957
    :catch_0
    move-exception v9

    .line 958
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 954
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v12, :cond_3

    .line 956
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 964
    .end local v3    # "currentDayFile":Ljava/io/File;
    .end local v4    # "currentDayFilePath":Ljava/lang/String;
    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .end local v13    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    const/4 v14, 0x0

    return-object v14

    .line 957
    .restart local v3    # "currentDayFile":Ljava/io/File;
    .restart local v4    # "currentDayFilePath":Ljava/lang/String;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    .restart local v13    # "iconBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v9

    .line 958
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 950
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .end local v13    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "iStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 951
    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 952
    const-string/jumbo v14, "ZsIconCustomHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "get currentThemeCalendarDay picture failed message is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 954
    if-eqz v11, :cond_3

    .line 956
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 957
    :catch_3
    move-exception v9

    .line 958
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 953
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 954
    :goto_3
    if-eqz v11, :cond_4

    .line 956
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 953
    :cond_4
    :goto_4
    throw v14

    .line 957
    :catch_4
    move-exception v9

    .line 958
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 953
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v11, v12

    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .local v11, "iStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 950
    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v11, v12

    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .restart local v11    # "iStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 387
    if-nez p0, :cond_0

    .line 388
    return-object v3

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gtz v2, :cond_2

    .line 391
    :cond_1
    return-object v3

    .line 394
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 395
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 396
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 393
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 399
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 401
    return-object v0

    .line 397
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getCalendarIconFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1061
    const-string/jumbo v3, ""

    .line 1062
    .local v3, "resRoot":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 1063
    .local v2, "resPath":Ljava/lang/String;
    const-string/jumbo v1, "built_in_app_icons"

    .line 1064
    .local v1, "folderName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/data/zsTheme/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v0, "dataThemeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1066
    const-string/jumbo v3, "/data/zsTheme/"

    .line 1070
    :goto_0
    invoke-static {}, Landroid/content/res/theme/ZsThemeUtils;->getTheme()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "icons_1080p_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "com.journeyui.calendar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    :goto_1
    const-string/jumbo v4, "ZsIconCustomHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCalendarIconFilePath is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-object v2

    .line 1068
    :cond_0
    const-string/jumbo v3, "/system/media/journeyui-theme/"

    goto :goto_0

    .line 1073
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "icons_1080p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "com.journeyui.calendar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getCalendarTheme()Landroid/content/res/theme/CalendarTheme;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 969
    const-string/jumbo v7, "manifest.xml"

    invoke-static {v7}, Landroid/content/res/theme/ZsIconCustomHelper;->getCalendarIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 970
    .local v5, "manifestFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 971
    .local v4, "manifestFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 972
    const/4 v2, 0x0

    .line 974
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/content/res/theme/ZsIconCustomHelper;->getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/CalendarTheme;

    move-result-object v6

    .line 977
    .local v6, "theme":Landroid/content/res/theme/CalendarTheme;
    if-eqz v6, :cond_1

    .line 978
    const-string/jumbo v7, "ZsIconCustomHelper"

    const-string/jumbo v8, "getCalendarTheme not null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 985
    if-eqz v3, :cond_0

    .line 987
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 979
    :cond_0
    :goto_0
    return-object v6

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 981
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    const-string/jumbo v7, "ZsIconCustomHelper"

    const-string/jumbo v8, "getCalendarTheme --> null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 985
    if-eqz v3, :cond_2

    .line 987
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 994
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v6    # "theme":Landroid/content/res/theme/CalendarTheme;
    :cond_2
    :goto_1
    return-object v9

    .line 988
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "theme":Landroid/content/res/theme/CalendarTheme;
    :catch_1
    move-exception v0

    .line 989
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 982
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v6    # "theme":Landroid/content/res/theme/CalendarTheme;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 983
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 985
    if-eqz v2, :cond_2

    .line 987
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 988
    :catch_3
    move-exception v0

    .line 989
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 984
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 985
    :goto_3
    if-eqz v2, :cond_3

    .line 987
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 984
    :cond_3
    :goto_4
    throw v7

    .line 988
    :catch_4
    move-exception v0

    .line 989
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 984
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 982
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

.method public static getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "needClipDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v9, 0x0

    .line 745
    if-nez p0, :cond_0

    .line 746
    const-string/jumbo v7, "ZsIconCustomHelper"

    const-string/jumbo v8, "no iconDrawable to clip when get letvThemeIcon "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-object v9

    .line 749
    :cond_0
    invoke-static {p0}, Landroid/content/res/theme/ZsIconCustomHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 750
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v7, "template"

    invoke-static {p1, v7}, Landroid/content/res/theme/ZsIconCustomHelper;->getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 751
    .local v5, "templateBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 752
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Landroid/content/res/theme/ZsIconCustomHelper;->verifyTemplateSize(II)Z

    move-result v6

    .line 753
    .local v6, "verify":Z
    if-nez v6, :cond_1

    .line 754
    return-object p0

    .line 757
    .end local v6    # "verify":Z
    :cond_1
    const-string/jumbo v7, "base"

    invoke-static {p1, v7}, Landroid/content/res/theme/ZsIconCustomHelper;->getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 758
    .local v0, "basePlateLayerBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 759
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Landroid/content/res/theme/ZsIconCustomHelper;->verifyTemplateSize(II)Z

    move-result v6

    .line 760
    .restart local v6    # "verify":Z
    if-nez v6, :cond_2

    .line 761
    return-object p0

    .line 764
    .end local v6    # "verify":Z
    :cond_2
    const-string/jumbo v7, "effect"

    invoke-static {p1, v7}, Landroid/content/res/theme/ZsIconCustomHelper;->getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 765
    .local v3, "effectLayerBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 766
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Landroid/content/res/theme/ZsIconCustomHelper;->verifyTemplateSize(II)Z

    move-result v6

    .line 767
    .restart local v6    # "verify":Z
    if-nez v6, :cond_3

    .line 768
    return-object p0

    .line 771
    .end local v6    # "verify":Z
    :cond_3
    invoke-static {v5, v4, v0, v3}, Landroid/content/res/theme/ZsIconCustomHelper;->getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 772
    .local v1, "desBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_4

    .line 773
    return-object p0

    .line 775
    :cond_4
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 776
    .local v2, "desDrawable":Landroid/graphics/drawable/Drawable;
    return-object v2
.end method

.method public static getClipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/util/DisplayMetrics;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, "clipDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static/range {p0 .. p0}, Landroid/content/res/theme/ZsIconCustomHelper;->getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, "templateFilePath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v11, "templateFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 362
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v5, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    aget-object v4, v15, v14

    .line 364
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 365
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 368
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 369
    .local v6, "listSize":I
    if-lez v6, :cond_2

    .line 370
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 371
    .local v7, "rand":Ljava/util/Random;
    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 372
    .local v8, "randNum":I
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 373
    .local v13, "templateRandFilePath":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 374
    invoke-static/range {p1 .. p1}, Landroid/content/res/theme/ZsIconCustomHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 375
    .local v9, "resBitmap":Landroid/graphics/Bitmap;
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 377
    .local v10, "templateBitmap":Landroid/graphics/Bitmap;
    invoke-static {v10, v9}, Landroid/content/res/theme/ZsIconCustomHelper;->getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 378
    .local v3, "desBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "clipDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 382
    .end local v3    # "desBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "listSize":I
    .end local v7    # "rand":Ljava/util/Random;
    .end local v8    # "randNum":I
    .end local v9    # "resBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "templateBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "templateRandFilePath":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Landroid/content/res/theme/ZsIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v6, "iconFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 80
    .local v3, "iStream":Ljava/io/InputStream;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 82
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v3    # "iStream":Ljava/io/InputStream;
    .local v4, "iStream":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 84
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 85
    .local v5, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 92
    if-eqz v4, :cond_0

    .line 94
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-object v5

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v4, :cond_2

    .line 94
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v3, v4

    .line 102
    .end local v4    # "iStream":Ljava/io/InputStream;
    :cond_3
    :goto_2
    return-object v12

    .line 95
    .restart local v4    # "iStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 90
    .end local v3    # "iStream":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    if-eqz v3, :cond_3

    .line 94
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 95
    :catch_3
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 92
    :goto_4
    if-eqz v3, :cond_4

    .line 94
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 91
    :cond_4
    :goto_5
    throw v7

    .line 95
    :catch_4
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "iStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "iStream":Ljava/io/InputStream;
    .local v3, "iStream":Ljava/io/InputStream;
    goto :goto_4

    .line 89
    .end local v3    # "iStream":Ljava/io/InputStream;
    .restart local v4    # "iStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 13
    .param p0, "type"    # I
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v12, 0x1

    .line 846
    const-string/jumbo v4, ""

    .line 847
    .local v4, "resRoot":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 848
    .local v3, "resPath":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 849
    .local v5, "tempPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v10, "/data/zsTheme/"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    .local v1, "dataThemeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 851
    const-string/jumbo v4, "/data/zsTheme/"

    .line 855
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 920
    :cond_0
    :goto_1
    return-object v3

    .line 853
    :cond_1
    const-string/jumbo v4, "/system/media/journeyui-theme/"

    goto :goto_0

    .line 857
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 858
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    .local v2, "iconFilePathCommon":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 860
    move-object v3, v5

    goto :goto_1

    .line 863
    :cond_2
    invoke-static {}, Landroid/content/res/theme/ZsThemeUtils;->getTheme()I

    move-result v10

    if-ne v10, v12, :cond_3

    .line 864
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons_1080p_1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 866
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons_1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 871
    .end local v2    # "iconFilePathCommon":Ljava/io/File;
    :pswitch_1
    invoke-static {p1}, Landroid/content/res/theme/ZsThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 872
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "2k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 873
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    .local v8, "wallpaperFile2k":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 875
    move-object v3, v5

    .line 884
    .end local v8    # "wallpaperFile2k":Ljava/io/File;
    :cond_4
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 885
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    .local v9, "wallpaperFileComm":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 887
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 878
    .end local v9    # "wallpaperFileComm":Ljava/io/File;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 879
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    .local v7, "wallpaperFile1080p":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 881
    move-object v3, v5

    goto :goto_2

    .line 892
    .end local v7    # "wallpaperFile1080p":Ljava/io/File;
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "template"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 893
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .local v6, "templateFilePathCommon":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 895
    move-object v3, v5

    goto/16 :goto_1

    .line 898
    :cond_6
    invoke-static {}, Landroid/content/res/theme/ZsThemeUtils;->getTheme()I

    move-result v10

    if-ne v10, v12, :cond_7

    .line 899
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons_1080p_1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "template"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 901
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons_1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "template"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 906
    .end local v6    # "templateFilePathCommon":Ljava/io/File;
    :pswitch_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "com.journeyui.calendar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 907
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    .local v0, "calendarFilePathCommon":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 909
    move-object v3, v5

    goto/16 :goto_1

    .line 912
    :cond_8
    invoke-static {}, Landroid/content/res/theme/ZsThemeUtils;->getTheme()I

    move-result v10

    if-ne v10, v12, :cond_9

    .line 913
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "icons_1080p_1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "com.journeyui.calendar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 915
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "com.journeyui.calendar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrawIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "folderType"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 112
    const-string/jumbo v5, "com.journeyui.calendar"

    .line 113
    .local v5, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 114
    .local v4, "iconPath":Ljava/lang/String;
    const-string/jumbo v6, "com.journeyui.calendar"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    const-string/jumbo v6, "com.journeyui.calendar.png"

    invoke-static {v6}, Landroid/content/res/theme/ZsIconCustomHelper;->getCalendarIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .end local v4    # "iconPath":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Landroid/content/res/theme/ZsIconCustomHelper;->isReDrawCalendarIcon(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 119
    const v6, 0x1080241

    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v7, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    .local v1, "calendarBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, v9}, Landroid/content/res/theme/ZsIconCustomHelper;->createZsDynamicCalendarIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 122
    return-object v0

    .line 124
    :cond_1
    return-object v9

    .line 126
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "calendarBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {}, Landroid/content/res/theme/ZsIconCustomHelper;->getCalendarTheme()Landroid/content/res/theme/CalendarTheme;

    move-result-object v3

    .line 127
    .local v3, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 128
    .local v2, "calendarIconBt":Landroid/graphics/Bitmap;
    const-string/jumbo v6, "ZsIconCustomHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDrawIcon()---> iconPath =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",calendarIconBt =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v6, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    invoke-static {p0, v2, v3}, Landroid/content/res/theme/ZsIconCustomHelper;->createZsDynamicCalendarIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 132
    return-object v0

    .line 134
    :cond_3
    return-object v9
.end method

.method public static getDrawableFromCommonFilePath(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "iconName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 1006
    const/4 v4, 0x0

    .line 1007
    .local v4, "iconDrawabale":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p1, v8}, Landroid/content/res/theme/ZsIconCustomHelper;->haveReDrawIconInThemeFile(Landroid/content/res/Resources;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1008
    invoke-static {p0, p1, v8}, Landroid/content/res/theme/ZsIconCustomHelper;->getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, "filePath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1011
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    :try_start_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 1018
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1017
    invoke-direct {v5, p0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .local v5, "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :try_start_2
    const-string/jumbo v7, "ZsIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDrawableFromCommonFilePath ----> filePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",iconName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1024
    if-eqz v6, :cond_0

    .line 1026
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1020
    :cond_0
    :goto_1
    return-object v5

    .line 1012
    .end local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 1014
    .restart local v6    # "is":Ljava/io/InputStream;
    const-string/jumbo v7, "ZsIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDrawableFromCommonFilePath failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1027
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1021
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v2

    .line 1022
    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v7, "ZsIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDrawableFromCommonFilePath failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1024
    if-eqz v6, :cond_1

    .line 1026
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1033
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_3
    return-object v4

    .line 1027
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "filePath":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 1028
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 1023
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1024
    :goto_4
    if-eqz v6, :cond_2

    .line 1026
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1023
    :cond_2
    :goto_5
    throw v7

    .line 1027
    :catch_4
    move-exception v1

    .line 1028
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 1023
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .local v4, "iconDrawabale":Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 1021
    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method public static getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/CalendarTheme;
    .locals 24
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v4, Landroid/content/res/theme/CalendarTheme;

    invoke-direct {v4}, Landroid/content/res/theme/CalendarTheme;-><init>()V

    .line 250
    .local v4, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 251
    .local v12, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 252
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 253
    .local v10, "event":I
    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_12

    .line 254
    packed-switch v10, :pswitch_data_0

    .line 342
    :cond_0
    :pswitch_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    goto :goto_0

    .line 258
    :pswitch_1
    const-string/jumbo v22, "BroadcastBinder"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 259
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "actionName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/res/theme/CalendarTheme;->actionList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v2    # "actionName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v22, "week_margin_top"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 263
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .line 264
    .local v19, "weekMarginTop":F
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekMarginTop(F)V

    .line 266
    .end local v19    # "weekMarginTop":F
    :cond_2
    const-string/jumbo v22, "week_margin_left"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 267
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 268
    .local v18, "weekMarginLeft":F
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekMarginLeft(F)V

    .line 270
    .end local v18    # "weekMarginLeft":F
    :cond_3
    const-string/jumbo v22, "week_font"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 271
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .line 272
    .local v17, "weekFont":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekFontType(Ljava/lang/String;)V

    .line 274
    .end local v17    # "weekFont":Ljava/lang/String;
    :cond_4
    const-string/jumbo v22, "week_text_size"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 276
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 277
    .local v21, "weekTextSize":F
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekTextSize(F)V

    .line 279
    .end local v21    # "weekTextSize":F
    :cond_5
    const-string/jumbo v22, "week_text_color"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 280
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    .line 281
    .local v20, "weekTextColor":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekTextColor(I)V

    .line 283
    .end local v20    # "weekTextColor":Ljava/lang/String;
    :cond_6
    const-string/jumbo v22, "day_margin_top"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 284
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 285
    .local v7, "dayMarginTop":F
    invoke-virtual {v4, v7}, Landroid/content/res/theme/CalendarTheme;->setDayMarginTop(F)V

    .line 287
    .end local v7    # "dayMarginTop":F
    :cond_7
    const-string/jumbo v22, "day_margin_left"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 288
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 289
    .local v6, "dayMarginLeft":F
    invoke-virtual {v4, v6}, Landroid/content/res/theme/CalendarTheme;->setDayMarginLeft(F)V

    .line 291
    .end local v6    # "dayMarginLeft":F
    :cond_8
    const-string/jumbo v22, "day_font"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 292
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "dayFont":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/content/res/theme/CalendarTheme;->setDayFontType(Ljava/lang/String;)V

    .line 295
    .end local v5    # "dayFont":Ljava/lang/String;
    :cond_9
    const-string/jumbo v22, "day_text_size"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 296
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 297
    .local v9, "dayTextSize":F
    invoke-virtual {v4, v9}, Landroid/content/res/theme/CalendarTheme;->setDayTextSize(F)V

    .line 299
    .end local v9    # "dayTextSize":F
    :cond_a
    const-string/jumbo v22, "day_text_color"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 300
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, "dayTextColor":Ljava/lang/String;
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setDayTextColor(I)V

    .line 304
    .end local v8    # "dayTextColor":Ljava/lang/String;
    :cond_b
    const-string/jumbo v22, "Var"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 305
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 306
    .local v3, "attributeCount":I
    if-lez v3, :cond_e

    .line 307
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v3, :cond_e

    .line 308
    const-string/jumbo v22, "name"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 309
    .local v14, "valueName":Ljava/lang/String;
    const-string/jumbo v22, "expression"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, "valueExpression":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 311
    iput-object v14, v4, Landroid/content/res/theme/CalendarTheme;->type:Ljava/lang/String;

    .line 313
    :cond_c
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 314
    iput-object v13, v4, Landroid/content/res/theme/CalendarTheme;->typeValue:Ljava/lang/String;

    .line 307
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 319
    .end local v3    # "attributeCount":I
    .end local v11    # "i":I
    .end local v13    # "valueExpression":Ljava/lang/String;
    .end local v14    # "valueName":Ljava/lang/String;
    :cond_e
    const-string/jumbo v22, "Image"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 320
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 321
    .restart local v3    # "attributeCount":I
    if-lez v3, :cond_0

    .line 322
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v3, :cond_0

    .line 323
    const-string/jumbo v22, "name"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 324
    .restart local v14    # "valueName":Ljava/lang/String;
    const-string/jumbo v22, "src"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 325
    .local v15, "valueSrc":Ljava/lang/String;
    const-string/jumbo v22, "srcid"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 326
    .local v16, "valueSrcid":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 327
    iput-object v14, v4, Landroid/content/res/theme/CalendarTheme;->imageName:Ljava/lang/String;

    .line 329
    :cond_f
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 330
    iput-object v15, v4, Landroid/content/res/theme/CalendarTheme;->imageSrcAttri:Ljava/lang/String;

    .line 332
    :cond_10
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 333
    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/content/res/theme/CalendarTheme;->imageSrcIdAttri:Ljava/lang/String;

    .line 322
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 344
    .end local v3    # "attributeCount":I
    .end local v11    # "i":I
    .end local v14    # "valueName":Ljava/lang/String;
    .end local v15    # "valueSrc":Ljava/lang/String;
    .end local v16    # "valueSrcid":Ljava/lang/String;
    :cond_12
    instance-of v0, v12, Lorg/kxml2/io/KXmlParser;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 345
    check-cast v12, Lorg/kxml2/io/KXmlParser;

    .end local v12    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v12}, Lorg/kxml2/io/KXmlParser;->close()V

    .line 347
    :cond_13
    return-object v4

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "template"    # Landroid/graphics/Bitmap;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 506
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 507
    :cond_0
    const/16 v18, 0x0

    return-object v18

    .line 510
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 511
    .local v4, "beginTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 512
    .local v15, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 513
    .local v14, "sourceHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 514
    .local v17, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 515
    .local v7, "height":I
    const-string/jumbo v18, "ZsIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " getMixingBitmap sourceWidth = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " sourceHeight = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 520
    .local v13, "ratio":F
    move/from16 v0, v17

    if-lt v0, v7, :cond_3

    .line 521
    move/from16 v17, v15

    .line 522
    int-to-float v0, v15

    move/from16 v18, v0

    div-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v7, v0

    .line 527
    :cond_2
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/content/res/theme/ZsIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 531
    const-string/jumbo v18, "ZsIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " getMixingBitmap sourceWidth = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " sourceHeight = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sub-int v18, v15, v17

    div-int/lit8 v10, v18, 0x2

    .line 535
    .local v10, "left":I
    sub-int v18, v14, v7

    div-int/lit8 v16, v18, 0x2

    .line 537
    .local v16, "top":I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v15, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 538
    .local v11, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 539
    .local v12, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 540
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 541
    .local v6, "canvas":Landroid/graphics/Canvas;
    int-to-float v0, v10

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 542
    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 543
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 545
    .local v8, "endTime":J
    const-string/jumbo v18, "ZsIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " getMixingBitmap use time = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v8, v4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-object v11

    .line 523
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "endTime":J
    .end local v10    # "left":I
    .end local v11    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v16    # "top":I
    :cond_3
    move/from16 v0, v17

    if-le v7, v0, :cond_2

    .line 524
    move v7, v14

    .line 525
    int-to-float v0, v14

    move/from16 v18, v0

    mul-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_0
.end method

.method public static getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25
    .param p0, "template"    # Landroid/graphics/Bitmap;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "baseplateLayerBp"    # Landroid/graphics/Bitmap;
    .param p3, "highlightLayerBp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 551
    if-nez p1, :cond_0

    .line 552
    const/16 v21, 0x0

    return-object v21

    .line 554
    :cond_0
    if-nez p0, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 555
    const/16 v21, 0x0

    return-object v21

    .line 557
    :cond_1
    if-nez p0, :cond_8

    .line 558
    const/4 v15, 0x0

    .line 559
    .local v15, "size":I
    if-eqz p2, :cond_2

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 562
    :cond_2
    if-nez v15, :cond_3

    .line 563
    if-eqz p3, :cond_3

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 567
    :cond_3
    if-nez v15, :cond_4

    .line 568
    const/16 v21, 0x0

    return-object v21

    .line 570
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 571
    .local v8, "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 572
    .local v7, "iconHeight":I
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    if-le v0, v15, :cond_5

    .line 573
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v11, v21, v22

    .line 574
    .local v11, "ratio":F
    int-to-float v0, v8

    move/from16 v21, v0

    div-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v8, v0

    .line 575
    int-to-float v0, v7

    move/from16 v21, v0

    div-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v7, v0

    .line 576
    move-object/from16 v0, p1

    invoke-static {v0, v8, v7}, Landroid/content/res/theme/ZsIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 578
    .end local v11    # "ratio":F
    :cond_5
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v21

    invoke-static {v15, v15, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 579
    .local v9, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 580
    .local v10, "paint":Landroid/graphics/Paint;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 581
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 582
    .local v5, "canvas":Landroid/graphics/Canvas;
    if-eqz p2, :cond_6

    .line 583
    int-to-float v0, v15

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    int-to-float v0, v15

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 585
    :cond_6
    int-to-float v0, v15

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    int-to-float v0, v8

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    int-to-float v0, v15

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    int-to-float v0, v7

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 586
    if-eqz p3, :cond_7

    .line 587
    int-to-float v0, v15

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    int-to-float v0, v15

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 589
    :cond_7
    return-object v9

    .line 593
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "iconHeight":I
    .end local v8    # "iconWidth":I
    .end local v9    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v15    # "size":I
    :cond_8
    const/16 v21, -0x1

    const/16 v22, -0x1

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v4

    .line 594
    .local v4, "bitmapLocation":[I
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/content/res/theme/ZsIconCustomHelper;->getPixelAreaOfBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 595
    .local v12, "realSizeTemplate":Landroid/graphics/Bitmap;
    if-nez v12, :cond_9

    .line 596
    const/16 v21, 0x0

    return-object v21

    .line 598
    :cond_9
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 599
    .local v13, "realTemlateHieght":I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 600
    .local v14, "realTemplateWidth":I
    if-eq v13, v14, :cond_f

    .line 601
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 602
    .local v20, "zoomSize":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/content/res/theme/ZsIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 603
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 604
    .restart local v9    # "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 605
    .restart local v10    # "paint":Landroid/graphics/Paint;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 606
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 607
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v21, v20, 0x2

    div-int/lit8 v22, v14, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, v20, 0x2

    div-int/lit8 v23, v13, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v12, v0, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 608
    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 609
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 610
    const/16 v21, -0x1

    const/16 v22, -0x1

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v18

    .line 611
    .local v18, "templateLocation":[I
    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getPixelAreaOfBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 615
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v18    # "templateLocation":[I
    .end local v20    # "zoomSize":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 616
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 617
    .local v6, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 618
    .local v17, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 619
    .local v16, "sourceHeight":I
    const/16 v21, 0x0

    aget v21, v4, v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 620
    div-int/lit8 v21, v17, 0x2

    div-int/lit8 v22, v19, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x0

    aput v21, v4, v22

    .line 622
    :cond_a
    const/16 v21, 0x1

    aget v21, v4, v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 623
    div-int/lit8 v21, v16, 0x2

    div-int/lit8 v22, v6, 0x2

    sub-int v21, v21, v22

    const/16 v22, 0x1

    aput v21, v4, v22

    .line 625
    :cond_b
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 626
    .restart local v9    # "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 627
    .restart local v10    # "paint":Landroid/graphics/Paint;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 628
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 629
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    const/16 v21, 0x0

    aget v21, v4, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v4, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 630
    if-ne v13, v14, :cond_c

    .line 631
    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 632
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 634
    :cond_c
    if-eqz p2, :cond_d

    .line 635
    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 636
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 638
    :cond_d
    if-eqz p3, :cond_e

    .line 639
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 641
    :cond_e
    return-object v9

    .line 613
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "height":I
    .end local v9    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v16    # "sourceHeight":I
    .end local v17    # "sourceWidth":I
    .end local v19    # "width":I
    :cond_f
    move-object/from16 v0, p1

    invoke-static {v0, v14, v13}, Landroid/content/res/theme/ZsIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public static getPackageIconFromTheme(Ljava/lang/String;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "folderType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 683
    const-string/jumbo v9, "com.android.calendar"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "com.android.providers.calendar"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 684
    const-string/jumbo v9, "com.journeyui.calendar"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 683
    if-nez v9, :cond_0

    .line 684
    const-string/jumbo v9, "com.yulong.android.calendar"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 683
    if-eqz v9, :cond_2

    .line 686
    :cond_0
    invoke-static {p1, p2}, Landroid/content/res/theme/ZsIconCustomHelper;->getDrawIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 687
    .local v0, "bitmapCalendar":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 688
    return-object v12

    .line 690
    :cond_1
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9

    .line 691
    .end local v0    # "bitmapCalendar":Landroid/graphics/Bitmap;
    :cond_2
    const-string/jumbo v9, "com.icoolme.zmweather"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 692
    invoke-virtual {p1}, Landroid/content/res/Resources;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/content/res/theme/ZsWeatherUtils;->getWeatherFromURI(Landroid/content/Context;)Landroid/content/res/theme/Weather;

    move-result-object v8

    .line 693
    .local v8, "weather":Landroid/content/res/theme/Weather;
    invoke-static {p1, v8}, Landroid/content/res/theme/ZsWeatherUtils;->createZsDynamicWeatherIcon(Landroid/content/res/Resources;Landroid/content/res/theme/Weather;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    .line 695
    .end local v8    # "weather":Landroid/content/res/theme/Weather;
    :cond_3
    invoke-static {p1, p0, p2}, Landroid/content/res/theme/ZsIconCustomHelper;->haveReDrawIconInThemeFile(Landroid/content/res/Resources;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 697
    invoke-static {p1, p0, p2}, Landroid/content/res/theme/ZsIconCustomHelper;->getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, "filePath":Ljava/lang/String;
    const-string/jumbo v9, "com.journeyui.backup"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 699
    const-string/jumbo v9, "ro.cust.customization"

    const-string/jumbo v10, "GL000000"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 700
    .local v7, "version":Ljava/lang/String;
    const-string/jumbo v9, "ZsIconCustomHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "backup app-0> version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string/jumbo v9, "GL000000"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 715
    .end local v7    # "version":Ljava/lang/String;
    :cond_4
    :goto_0
    const/4 v6, 0x0

    .line 717
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "is":Ljava/io/InputStream;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_1
    :try_start_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 724
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 723
    invoke-direct {v5, p1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 725
    .local v5, "iconDrawabale":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v9, "ZsIconCustomHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPackageIconFromTheme = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-> filePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",iconDrawabale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    if-eqz v6, :cond_5

    .line 732
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 726
    :cond_5
    :goto_2
    return-object v5

    .line 703
    .end local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "CN010200"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 705
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".mobile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9, p2}, Landroid/content/res/theme/ZsIconCustomHelper;->haveReDrawIconInThemeFile(Landroid/content/res/Resources;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 706
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".mobile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9, p2}, Landroid/content/res/theme/ZsIconCustomHelper;->getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 708
    :cond_7
    const-string/jumbo v9, "ZsIconCustomHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "backup app-1-> version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", filePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 709
    :cond_8
    const-string/jumbo v9, "CN030300"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_0

    .line 718
    .end local v7    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 719
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 720
    .restart local v6    # "is":Ljava/io/InputStream;
    const-string/jumbo v9, "ZsIconCustomHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPackageIconFile failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 734
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v2

    .line 735
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v9, "ZsIconCustomHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "e: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 727
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v3

    .line 728
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v9, "ZsIconCustomHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPackageIconDrawable failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 731
    if-eqz v6, :cond_9

    .line 732
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 740
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_9
    :goto_3
    return-object v12

    .line 734
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "filePath":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 735
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "ZsIconCustomHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "e: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 729
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 731
    if-eqz v6, :cond_a

    .line 732
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 729
    :cond_a
    :goto_4
    throw v9

    .line 734
    :catch_4
    move-exception v2

    .line 735
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "ZsIconCustomHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "e: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static getPixelAreaOfBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 39
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bitmapLocation"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 413
    .local v26, "beginTime":J
    if-nez p0, :cond_0

    .line 414
    const-string/jumbo v2, "ZsIconCustomHelper"

    const-string/jumbo v4, " getPixelAreaOfBitmap bitmap is null "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, 0x0

    return-object v2

    .line 417
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    .line 418
    .local v38, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 419
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v29

    .line 420
    .local v29, "density":I
    const-string/jumbo v2, "ZsIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPixelAreaOfBitmap width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " density = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v37, -0x1

    .line 423
    .local v37, "value":I
    const/16 v16, -0x1

    .local v16, "left":I
    const/16 v35, -0x1

    .line 424
    .local v35, "right":I
    new-array v3, v9, [I

    .line 425
    .local v3, "pixels_column":[I
    div-int/lit8 v32, v38, 0x2

    .line 427
    .local v32, "halfOfWidth":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v32

    if-ge v6, v0, :cond_c

    .line 428
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 429
    invoke-static {v3}, Landroid/content/res/theme/ZsIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 430
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    if-eqz v37, :cond_7

    .line 431
    add-int/lit8 v16, v6, 0x1

    move/from16 v34, v16

    .line 433
    .end local v16    # "left":I
    .local v34, "left":I
    :goto_1
    add-int/lit8 v2, v38, -0x1

    sub-int v14, v2, v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 434
    invoke-static {v3}, Landroid/content/res/theme/ZsIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 435
    const/4 v2, -0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_1

    if-eqz v37, :cond_1

    .line 436
    add-int/lit8 v35, v6, 0x1

    .line 438
    :cond_1
    const/4 v2, -0x1

    move/from16 v0, v34

    if-eq v0, v2, :cond_8

    const/4 v2, -0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_8

    .line 439
    const-string/jumbo v2, "ZsIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " right = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_2
    const/4 v2, 0x0

    aput v34, p1, v2

    .line 444
    const/16 v17, -0x1

    .local v17, "top":I
    const/16 v28, -0x1

    .line 445
    .local v28, "bottom":I
    move/from16 v0, v38

    new-array v11, v0, [I

    .line 446
    .local v11, "pixels_row":[I
    div-int/lit8 v33, v9, 0x2

    .line 447
    .local v33, "halfOfheight":I
    const/4 v6, 0x0

    move/from16 v36, v17

    .end local v17    # "top":I
    .local v36, "top":I
    :goto_3
    move/from16 v0, v33

    if-ge v6, v0, :cond_b

    .line 448
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v10, p0

    move/from16 v13, v38

    move v15, v6

    move/from16 v16, v38

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 449
    invoke-static {v11}, Landroid/content/res/theme/ZsIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 450
    const/4 v2, -0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_2

    if-eqz v37, :cond_2

    .line 451
    add-int/lit8 v17, v6, 0x1

    .end local v36    # "top":I
    .restart local v17    # "top":I
    move/from16 v36, v17

    .line 453
    .end local v17    # "top":I
    .restart local v36    # "top":I
    :cond_2
    add-int/lit8 v2, v9, -0x1

    sub-int v15, v2, v6

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v10, p0

    move/from16 v13, v38

    move/from16 v16, v38

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 454
    invoke-static {v11}, Landroid/content/res/theme/ZsIconCustomHelper;->intArrayToInt([I)I

    move-result v37

    .line 455
    const/4 v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_3

    if-eqz v37, :cond_3

    .line 456
    add-int/lit8 v28, v6, 0x1

    .line 458
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_9

    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_9

    .line 459
    const-string/jumbo v2, "ZsIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bottom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v36

    .line 463
    .end local v36    # "top":I
    .restart local v17    # "top":I
    :goto_4
    if-gez v34, :cond_a

    .line 464
    const/16 v16, 0x0

    .line 466
    .end local v34    # "left":I
    .restart local v16    # "left":I
    :goto_5
    if-gez v17, :cond_4

    .line 467
    const/16 v17, 0x0

    .line 469
    :cond_4
    if-gez v35, :cond_5

    .line 470
    const/16 v35, 0x0

    .line 472
    :cond_5
    if-gez v28, :cond_6

    .line 473
    const/16 v28, 0x0

    .line 475
    :cond_6
    const/4 v2, 0x1

    aput v17, p1, v2

    .line 476
    const-string/jumbo v2, "ZsIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " getPixelAreaOfBitmap use time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v26

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sub-int v2, v38, v35

    sub-int v15, v2, v16

    .line 478
    .local v15, "bitmap_w":I
    sub-int v2, v9, v28

    sub-int v19, v2, v17

    .line 479
    .local v19, "bitmap_h":I
    mul-int v2, v15, v19

    new-array v13, v2, [I

    .line 480
    .local v13, "pixels":[I
    const/4 v14, 0x0

    move-object/from16 v12, p0

    move/from16 v18, v15

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 482
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 481
    const/16 v21, 0x0

    move-object/from16 v20, v13

    move/from16 v22, v15

    move/from16 v23, v15

    move/from16 v24, v19

    invoke-static/range {v20 .. v25}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 484
    .local v30, "endTime":J
    const-string/jumbo v2, "ZsIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " getPixelAreaOfBitmap use time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v20, v30, v26

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string/jumbo v2, "ZsIconCustomHelper"

    const-string/jumbo v4, "----"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-object p0

    .end local v11    # "pixels_row":[I
    .end local v13    # "pixels":[I
    .end local v15    # "bitmap_w":I
    .end local v17    # "top":I
    .end local v19    # "bitmap_h":I
    .end local v28    # "bottom":I
    .end local v30    # "endTime":J
    .end local v33    # "halfOfheight":I
    :cond_7
    move/from16 v34, v16

    .line 430
    .end local v16    # "left":I
    .restart local v34    # "left":I
    goto/16 :goto_1

    .line 427
    :cond_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v34

    .end local v34    # "left":I
    .restart local v16    # "left":I
    goto/16 :goto_0

    .line 447
    .end local v16    # "left":I
    .restart local v11    # "pixels_row":[I
    .restart local v28    # "bottom":I
    .restart local v33    # "halfOfheight":I
    .restart local v34    # "left":I
    .restart local v36    # "top":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .end local v36    # "top":I
    .restart local v17    # "top":I
    :cond_a
    move/from16 v16, v34

    .end local v34    # "left":I
    .restart local v16    # "left":I
    goto/16 :goto_5

    .end local v16    # "left":I
    .end local v17    # "top":I
    .restart local v34    # "left":I
    .restart local v36    # "top":I
    :cond_b
    move/from16 v17, v36

    .end local v36    # "top":I
    .restart local v17    # "top":I
    goto/16 :goto_4

    .end local v11    # "pixels_row":[I
    .end local v17    # "top":I
    .end local v28    # "bottom":I
    .end local v33    # "halfOfheight":I
    .end local v34    # "left":I
    .restart local v16    # "left":I
    :cond_c
    move/from16 v34, v16

    .end local v16    # "left":I
    .restart local v34    # "left":I
    goto/16 :goto_2
.end method

.method private static getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "templateName"    # Ljava/lang/String;

    .prologue
    .line 821
    invoke-static {p0}, Landroid/content/res/theme/ZsIconCustomHelper;->getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    .line 822
    .local v6, "tempFilePath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v8, "templateFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_3

    .line 824
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v2, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v1, v10, v9

    .line 826
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 825
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 826
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "png"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 827
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 831
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 832
    .local v3, "listSize":I
    if-lez v3, :cond_3

    .line 833
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 834
    .local v4, "rand":Ljava/util/Random;
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 835
    .local v5, "randNum":I
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 836
    .local v0, "RandFilePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 837
    .local v7, "templateBitmap":Landroid/graphics/Bitmap;
    return-object v7

    .line 841
    .end local v0    # "RandFilePath":Ljava/lang/String;
    .end local v2    # "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "listSize":I
    .end local v4    # "rand":Ljava/util/Random;
    .end local v5    # "randNum":I
    .end local v7    # "templateBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v9, 0x0

    return-object v9
.end method

.method public static getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "folderType"    # I

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Landroid/content/res/theme/ZsIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "currentResPath":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 790
    .local v2, "folderName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 801
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "currentIonPath":Ljava/lang/String;
    return-object v0

    .line 792
    .end local v0    # "currentIonPath":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v2, "3rd_party_app_icons"

    goto :goto_0

    .line 795
    :pswitch_1
    const-string/jumbo v2, "built_in_app_icons"

    goto :goto_0

    .line 798
    :pswitch_2
    const-string/jumbo v2, "common_icons"

    goto :goto_0

    .line 790
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "iconName"    # Ljava/lang/String;

    .prologue
    .line 1037
    const-string/jumbo v4, ""

    .line 1038
    .local v4, "resRoot":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 1039
    .local v3, "resPath":Ljava/lang/String;
    const-string/jumbo v2, "built_in_app_icons"

    .line 1040
    .local v2, "folderName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "/data/zsTheme/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v0, "dataThemeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1042
    const-string/jumbo v4, "/data/zsTheme/"

    .line 1046
    :goto_0
    invoke-static {}, Landroid/content/res/theme/ZsThemeUtils;->getTheme()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1047
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "icons_1080p_1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "com.icoolme.zmweather"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1052
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1054
    return-object v3

    .line 1044
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    const-string/jumbo v4, "/system/media/journeyui-theme/"

    goto :goto_0

    .line 1049
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "icons_1080p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "com.icoolme.zmweather"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1056
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    const-string/jumbo v5, ""

    return-object v5
.end method

.method private static haveReDrawIconInThemeFile(Landroid/content/res/Resources;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "folderType"    # I

    .prologue
    .line 781
    invoke-static {p0, p1, p2}, Landroid/content/res/theme/ZsIconCustomHelper;->getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "iconFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v0, "iconFile":Ljava/io/File;
    const-string/jumbo v2, "ZsIconCustomHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "haveReDrawIconInThemeFile iconFilePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",iconFile.exists() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static haveThemeTemplateFile(Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 807
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/content/res/theme/ZsIconCustomHelper;->getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, "templateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 809
    const/4 v1, 0x1

    return v1

    .line 811
    :cond_0
    return v2
.end method

.method public static intArrayToInt([I)I
    .locals 4
    .param p0, "intArray"    # [I

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "returnInt":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 492
    .local v1, "value":I
    add-int/2addr v0, v1

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "value":I
    :cond_0
    return v0
.end method

.method public static isReDrawCalendarIcon(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 666
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, "iconFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    const/4 v1, 0x1

    return v1

    .line 670
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static verifyTemplateSize(II)Z
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 998
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 999
    .local v0, "maxSize":I
    const/16 v1, 0xc0

    if-le v0, v1, :cond_0

    .line 1000
    const/4 v1, 0x0

    return v1

    .line 1002
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 654
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 655
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 656
    .local v4, "h":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 657
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 658
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 659
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 660
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 661
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method
