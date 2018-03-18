.class public Landroid/content/res/theme/WeatherTheme;
.super Ljava/lang/Object;
.source "WeatherTheme.java"


# instance fields
.field private marginLeft:F

.field private marginTop:F

.field private textColor:I

.field private textSize:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarginLeft()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/content/res/theme/WeatherTheme;->marginLeft:F

    return v0
.end method

.method public getMarginTop()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Landroid/content/res/theme/WeatherTheme;->marginTop:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Landroid/content/res/theme/WeatherTheme;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Landroid/content/res/theme/WeatherTheme;->textSize:F

    return v0
.end method

.method public setMarginLeft(F)V
    .locals 0
    .param p1, "marginLeft"    # F

    .prologue
    .line 42
    iput p1, p0, Landroid/content/res/theme/WeatherTheme;->marginLeft:F

    .line 41
    return-void
.end method

.method public setMarginTop(F)V
    .locals 0
    .param p1, "marginTop"    # F

    .prologue
    .line 34
    iput p1, p0, Landroid/content/res/theme/WeatherTheme;->marginTop:F

    .line 33
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 26
    iput p1, p0, Landroid/content/res/theme/WeatherTheme;->textColor:I

    .line 25
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 18
    iput p1, p0, Landroid/content/res/theme/WeatherTheme;->textSize:F

    .line 17
    return-void
.end method
