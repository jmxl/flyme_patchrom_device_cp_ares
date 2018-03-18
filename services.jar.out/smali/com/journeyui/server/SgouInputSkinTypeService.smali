.class public Lcom/journeyui/server/SgouInputSkinTypeService;
.super Lcom/android/server/SystemService;
.source "SgouInputSkinTypeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/server/SgouInputSkinTypeService$1;
    }
.end annotation


# static fields
.field private static final DDEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SgouInputSkinTypeService"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/journeyui/server/SgouInputSkinTypeService$1;

    invoke-direct {v0, p0}, Lcom/journeyui/server/SgouInputSkinTypeService$1;-><init>(Lcom/journeyui/server/SgouInputSkinTypeService;)V

    iput-object v0, p0, Lcom/journeyui/server/SgouInputSkinTypeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/journeyui/server/SgouInputSkinTypeService;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/journeyui/server/SgouInputSkinTypeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/journeyui/server/SgouInputSkinTypeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/journeyui/server/SgouInputSkinTypeService;->registerReceiver()V

    .line 46
    return-void
.end method
