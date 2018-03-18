.class public Landroid/content/res/theme/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# instance fields
.field mCity:Ljava/lang/String;

.field mCurTemp:Ljava/lang/String;

.field public mIconFilePath:Ljava/lang/String;

.field public mResId:I

.field public mResources:Landroid/content/res/Resources;

.field public mWeaCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/theme/Weather;->mWeaCode:I

    .line 12
    const-string/jumbo v0, "15\u00b0"

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mCurTemp:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "shanghai"

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mCity:Ljava/lang/String;

    .line 15
    const v0, 0x10807ff

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "weaCode"    # Ljava/lang/String;
    .param p2, "curTemp"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v2, p0, Landroid/content/res/theme/Weather;->mWeaCode:I

    .line 12
    const-string/jumbo v0, "15\u00b0"

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mCurTemp:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "shanghai"

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mCity:Ljava/lang/String;

    .line 15
    const v0, 0x10807ff

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mCurTemp:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Landroid/content/res/theme/Weather;->mCity:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/content/res/theme/Weather;->mWeaCode:I

    .line 30
    :cond_1
    iget v0, p0, Landroid/content/res/theme/Weather;->mWeaCode:I

    invoke-virtual {p0, v0}, Landroid/content/res/theme/Weather;->setWeaCode(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public setWeaCode(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    const v1, 0x10807ff

    .line 68
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    iput v1, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 70
    const-string/jumbo v0, "w_sunny.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    .line 67
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 72
    const v0, 0x10807fb

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 73
    const-string/jumbo v0, "w_overcast.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 75
    :cond_3
    const v0, 0x1080800

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 76
    const-string/jumbo v0, "w_thunderstorm.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_4
    const/4 v0, 0x7

    if-lt p1, v0, :cond_6

    const/16 v0, 0xc

    if-gt p1, v0, :cond_6

    .line 78
    :cond_5
    const v0, 0x10807fc

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 79
    const-string/jumbo v0, "w_rain.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_6
    const/16 v0, 0x15

    if-lt p1, v0, :cond_7

    const/16 v0, 0x19

    if-le p1, v0, :cond_5

    .line 80
    :cond_7
    const/4 v0, 0x6

    if-eq p1, v0, :cond_8

    const/16 v0, 0x13

    if-ne p1, v0, :cond_9

    .line 82
    :cond_8
    const v0, 0x10807fe

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 83
    const-string/jumbo v0, "w_snow.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_9
    const/16 v0, 0xd

    if-lt p1, v0, :cond_a

    const/16 v0, 0x11

    if-le p1, v0, :cond_8

    .line 81
    :cond_a
    const/16 v0, 0x1a

    if-lt p1, v0, :cond_b

    const/16 v0, 0x1c

    if-le p1, v0, :cond_8

    .line 84
    :cond_b
    const/16 v0, 0x12

    if-ne p1, v0, :cond_c

    .line 85
    const v0, 0x10807f9

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 86
    const-string/jumbo v0, "w_fog.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_c
    const/16 v0, 0x14

    if-eq p1, v0, :cond_d

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_e

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_e

    .line 88
    :cond_d
    const v0, 0x10807fd

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 89
    const-string/jumbo v0, "w_sandstorm.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    :cond_e
    const/16 v0, 0x20

    if-ne p1, v0, :cond_f

    .line 91
    const v0, 0x10807fa

    iput v0, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 92
    const-string/jumbo v0, "w_haze.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 94
    :cond_f
    iput v1, p0, Landroid/content/res/theme/Weather;->mResId:I

    .line 95
    const-string/jumbo v0, "w_sunny.png"

    invoke-static {v0}, Landroid/content/res/theme/ZsIconCustomHelper;->getWeatherIconResFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/Weather;->mIconFilePath:Ljava/lang/String;

    goto/16 :goto_0
.end method
