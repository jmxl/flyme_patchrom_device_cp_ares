.class public Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;
.super Ljava/lang/Object;
.source "SmartPolicyBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;,
        Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$MyThreadFactory;
    }
.end annotation


# static fields
.field private static final CACHE_MAX_NUM:I = 0x64

.field private static final DEFAULT_RATIO:I = 0x50

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

.field private static mService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final BRIGHTNESS_RATIO_NONE:I

.field private mBrightnessRatio:I

.field private mCallbacks:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;

.field private mCurrentPakage:Ljava/lang/String;

.field private final mLRUCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mBrightnessRatio:I

    return v0
.end method

.method static synthetic -get1(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;)Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mCallbacks:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;

    return-object v0
.end method

.method static synthetic -set0(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;I)I
    .locals 0

    iput p1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mBrightnessRatio:I

    return p1
.end method

.method static synthetic -set1(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mCurrentPakage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->getBrightnessRatioInternal(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "SmartPolicyBrightnessController"

    sput-object v0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$MyThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$MyThreadFactory;-><init>(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$MyThreadFactory;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mService:Ljava/util/concurrent/ExecutorService;

    .line 37
    new-instance v0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    invoke-direct {v0}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;-><init>()V

    sput-object v0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mInstance:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mCurrentPakage:Ljava/lang/String;

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mBrightnessRatio:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->BRIGHTNESS_RATIO_NONE:I

    .line 33
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mLRUCache:Landroid/util/LruCache;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mCurrentPakage:Ljava/lang/String;

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mBrightnessRatio:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->BRIGHTNESS_RATIO_NONE:I

    .line 33
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mLRUCache:Landroid/util/LruCache;

    .line 46
    return-void
.end method

.method private getBrightnessRatioInternal(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x50

    .line 99
    invoke-direct {p0, p2}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->getFromCache(Ljava/lang/String;)I

    move-result v8

    .line 100
    .local v8, "ratio":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    .line 101
    return v8

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/journeyui/smartpolicy/SmartPolicyUtils;->CONTENT_BACKLIGHT_URI:Landroid/net/Uri;

    .line 106
    const-string/jumbo v3, "package like ?"

    .line 107
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 105
    const/4 v2, 0x0

    .line 107
    const/4 v5, 0x0

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 108
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 109
    return v9

    .line 111
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const-string/jumbo v1, "policy_ratio"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 114
    iget-object v1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mLRUCache:Landroid/util/LruCache;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 124
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v8

    .line 117
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/16 v8, 0x50

    .line 118
    iget-object v1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mLRUCache:Landroid/util/LruCache;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 122
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getFromCache(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v2, -0x1

    .line 87
    .local v2, "result":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mLRUCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 95
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 92
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getInstance()Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mInstance:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    return-object v0
.end method

.method private static getWorker()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method filter(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mCurrentPakage:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    return v1

    .line 65
    :cond_0
    invoke-static {}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->getWorker()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 66
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;-><init>(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 82
    const/4 v1, 0x1

    return v1
.end method

.method public getBrightness(I)I
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 128
    int-to-float v0, p1

    iget v1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mBrightnessRatio:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setCallback(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->mCallbacks:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;

    .line 57
    return-void
.end method
