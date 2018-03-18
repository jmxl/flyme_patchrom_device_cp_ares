.class public Landroid/content/res/theme/CalendarTheme;
.super Ljava/lang/Object;
.source "CalendarTheme.java"


# instance fields
.field actionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dayFontType:Ljava/lang/String;

.field dayMarginLeft:F

.field dayMarginTop:F

.field dayTextColor:I

.field dayTextSize:F

.field imageName:Ljava/lang/String;

.field imageSrcAttri:Ljava/lang/String;

.field imageSrcIdAttri:Ljava/lang/String;

.field type:Ljava/lang/String;

.field typeValue:Ljava/lang/String;

.field weekFontType:Ljava/lang/String;

.field weekMarginLeft:F

.field weekMarginTop:F

.field weekTextColor:I

.field weekTextSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/CalendarTheme;->actionList:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public setDayFontType(Ljava/lang/String;)V
    .locals 0
    .param p1, "dayFontType"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Landroid/content/res/theme/CalendarTheme;->dayFontType:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDayMarginLeft(F)V
    .locals 0
    .param p1, "dayMarginLeft"    # F

    .prologue
    .line 56
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->dayMarginLeft:F

    .line 55
    return-void
.end method

.method public setDayMarginTop(F)V
    .locals 0
    .param p1, "dayMarginTop"    # F

    .prologue
    .line 53
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    .line 52
    return-void
.end method

.method public setDayTextColor(I)V
    .locals 0
    .param p1, "dayTextColor"    # I

    .prologue
    .line 68
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    .line 67
    return-void
.end method

.method public setDayTextSize(F)V
    .locals 0
    .param p1, "dayTextSize"    # F

    .prologue
    .line 64
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    .line 63
    return-void
.end method

.method public setWeekFontType(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekFontType"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/content/res/theme/CalendarTheme;->weekFontType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setWeekMarginLeft(F)V
    .locals 0
    .param p1, "weekMarginLeft"    # F

    .prologue
    .line 37
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->weekMarginLeft:F

    .line 36
    return-void
.end method

.method public setWeekMarginTop(F)V
    .locals 0
    .param p1, "weekMarginTop"    # F

    .prologue
    .line 34
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->weekMarginTop:F

    .line 33
    return-void
.end method

.method public setWeekTextColor(I)V
    .locals 0
    .param p1, "weekTextColor"    # I

    .prologue
    .line 49
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->weekTextColor:I

    .line 48
    return-void
.end method

.method public setWeekTextSize(F)V
    .locals 0
    .param p1, "weekTextSize"    # F

    .prologue
    .line 45
    iput p1, p0, Landroid/content/res/theme/CalendarTheme;->weekTextSize:F

    .line 44
    return-void
.end method
