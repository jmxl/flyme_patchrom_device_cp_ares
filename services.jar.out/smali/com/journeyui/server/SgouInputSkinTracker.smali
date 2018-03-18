.class public Lcom/journeyui/server/SgouInputSkinTracker;
.super Ljava/lang/Object;
.source "SgouInputSkinTracker.java"


# static fields
.field private static final DDEBUG:Z = false

.field private static final DEFAULT_SKIN_TYPE:I = 0x0

.field public static final INPUT_SKIN_TYPE_DARK:I = 0x1

.field public static final INPUT_SKIN_TYPE_LIGHT:I = 0x0

.field private static PACKAGES_NAME:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTINGS_PROPERTY:Ljava/lang/String; = "zeusis.input.skin"

.field private static final TAG:Ljava/lang/String; = "SgouInputSkinTracker"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    .line 18
    sget-object v0, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    const-string/jumbo v1, "com.journeyui.launcher"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    const-string/jumbo v1, "com.journeyui.recorder"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    const-string/jumbo v1, "com.journeyui.note"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    const-string/jumbo v1, "com.journeyui.globalsearch"

    const-string/jumbo v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.wh.ai.assistant"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    const-string/jumbo v1, "com.journeyui.deskclock"

    const-string/jumbo v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSkinType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 53
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "zeusis.input.skin"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 54
    .local v2, "value":I
    return v2

    .line 55
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    return v5
.end method

.method public static setSkinType(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 70
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "zeusis.input.skin"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "oldValue":I
    if-eq v1, p1, :cond_0

    .line 72
    const-string/jumbo v3, "zeusis.input.skin"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "oldValue":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public activityResumeTrigger(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 34
    :try_start_0
    sget-object v1, Lcom/journeyui/server/SgouInputSkinTracker;->PACKAGES_NAME:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/journeyui/server/SgouInputSkinTracker;->setSkinType(Landroid/content/Context;I)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/journeyui/server/SgouInputSkinTracker;->setSkinType(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
