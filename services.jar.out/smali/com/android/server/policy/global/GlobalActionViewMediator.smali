.class public Lcom/android/server/policy/global/GlobalActionViewMediator;
.super Ljava/lang/Object;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionViewMediator$1;,
        Lcom/android/server/policy/global/GlobalActionViewMediator$2;,
        Lcom/android/server/policy/global/GlobalActionViewMediator$3;,
        Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private isReceiverRegisted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDelayCloseWindow:Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;

.field private mGlobalActionDonePending:Z

.field private mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

.field private mHandler:Landroid/os/Handler;

.field private mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

.field private mTimer:Ljava/util/Timer;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->isReceiverRegisted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mDelayCloseWindow:Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->isReceiverRegisted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/global/GlobalActionViewMediator;Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;)Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mDelayCloseWindow:Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/global/GlobalActionViewMediator;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleShow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "zs_globalation"

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 64
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewMediator$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/global/GlobalActionViewMediator$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$2;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    .line 161
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$3;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 35
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/IMediatorCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/global/GlobalActionViewManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/global/IMediatorCallback;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 32
    return-void
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hide()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleHide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 91
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleShow()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->show()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final isGlobalActionShowing()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final showGlobal(ZZ)V
    .locals 5
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v4, 0x1

    .line 45
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLocked(), keyguardShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46
    const-string/jumbo v3, ", isDeviceProvisioned: "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->showBeforeProvisioning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    :cond_1
    return-void

    .line 50
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_3

    .line 51
    iput-boolean v4, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 52
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 53
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method
