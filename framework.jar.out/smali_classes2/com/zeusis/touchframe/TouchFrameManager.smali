.class public Lcom/zeusis/touchframe/TouchFrameManager;
.super Ljava/lang/Object;
.source "TouchFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;,
        Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;,
        Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;
    }
.end annotation


# static fields
.field public static final DISABLE_CLICK:I = 0x1

.field public static final DISABLE_NONE:I = 0x0

.field public static final KEY_MODE_BACK_BACK:I = 0x0

.field public static final KEY_MODE_BACK_RECENT:I = 0x2

.field public static final KEY_MODE_NAVIGATION_BACK_RECENT:I = 0x3

.field public static final KEY_MODE_NAVIGATION_RECENT_BACK:I = 0x4

.field public static final KEY_MODE_RECENT_BACK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TouchFrameManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mScreenshotListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;",
            "Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/zeusis/touchframe/ITouchFrameService;

.field private mThumbListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent$OnFinished;",
            "Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mThumbListener:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mScreenshotListener:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private declared-synchronized getService()Lcom/zeusis/touchframe/ITouchFrameService;
    .locals 2

    .prologue
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mService:Lcom/zeusis/touchframe/ITouchFrameService;

    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "touchframe"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mService:Lcom/zeusis/touchframe/ITouchFrameService;

    .line 44
    iget-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mService:Lcom/zeusis/touchframe/ITouchFrameService;

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "TouchFrameManager"

    const-string/jumbo v1, "warning: no TOUCH_FRAME_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mService:Lcom/zeusis/touchframe/ITouchFrameService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addScreenshotListener(Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;)V
    .locals 4
    .param p1, "l"    # Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;

    .prologue
    .line 205
    iget-object v3, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mScreenshotListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;

    .line 206
    .local v2, "transport":Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;
    if-nez v2, :cond_0

    .line 207
    new-instance v2, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;

    .end local v2    # "transport":Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;
    invoke-direct {v2, p0, p1}, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;-><init>(Lcom/zeusis/touchframe/TouchFrameManager;Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;)V

    .line 208
    .restart local v2    # "transport":Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;
    iget-object v3, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mScreenshotListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 212
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v1, v2}, Lcom/zeusis/touchframe/ITouchFrameService;->addScreenshotListener(Lcom/zeusis/touchframe/IScreenshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    return-void

    .line 215
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addThumbListener(Landroid/app/PendingIntent$OnFinished;)V
    .locals 4
    .param p1, "l"    # Landroid/app/PendingIntent$OnFinished;

    .prologue
    .line 147
    iget-object v3, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mThumbListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;

    .line 148
    .local v2, "transport":Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;
    if-nez v2, :cond_0

    .line 149
    new-instance v2, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;

    .end local v2    # "transport":Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;
    invoke-direct {v2, p0, p1}, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;-><init>(Lcom/zeusis/touchframe/TouchFrameManager;Landroid/app/PendingIntent$OnFinished;)V

    .line 150
    .restart local v2    # "transport":Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;
    iget-object v3, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mThumbListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 154
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1, v2}, Lcom/zeusis/touchframe/ITouchFrameService;->addThumbListener(Lcom/zeusis/touchframe/IThumbListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    return-void

    .line 157
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public disable(I)V
    .locals 5
    .param p1, "what"    # I

    .prologue
    .line 70
    const-string/jumbo v2, "TouchFrameManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 73
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1, p1}, Lcom/zeusis/touchframe/ITouchFrameService;->disable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    return-void

    .line 76
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeScreenshotListener(Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;)V
    .locals 4
    .param p1, "l"    # Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;

    .prologue
    .line 222
    iget-object v3, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mScreenshotListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;

    .line 223
    .local v2, "transport":Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;
    if-eqz v2, :cond_0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 226
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1, v2}, Lcom/zeusis/touchframe/ITouchFrameService;->removeScreenshotListener(Lcom/zeusis/touchframe/IScreenshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :cond_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public removeThumbListener(Landroid/app/PendingIntent$OnFinished;)V
    .locals 4
    .param p1, "l"    # Landroid/app/PendingIntent$OnFinished;

    .prologue
    .line 164
    iget-object v3, p0, Lcom/zeusis/touchframe/TouchFrameManager;->mThumbListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;

    .line 165
    .local v2, "transport":Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;
    if-eqz v2, :cond_0

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 168
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1, v2}, Lcom/zeusis/touchframe/ITouchFrameService;->removeThumbListener(Lcom/zeusis/touchframe/IThumbListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :cond_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setKeyMode(I)V
    .locals 3
    .param p1, "keyMode"    # I

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 85
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1, p1}, Lcom/zeusis/touchframe/ITouchFrameService;->setKeyMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    return-void

    .line 88
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setLocked(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 60
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1, p1}, Lcom/zeusis/touchframe/ITouchFrameService;->setLocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    return-void

    .line 63
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setOpenPaymentMenuSwith(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/zeusis/touchframe/TouchFrameManager;->getService()Lcom/zeusis/touchframe/ITouchFrameService;

    move-result-object v1

    .line 97
    .local v1, "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1, p1}, Lcom/zeusis/touchframe/ITouchFrameService;->setOpenPaymentMenuSwith(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    return-void

    .line 100
    .end local v1    # "svc":Lcom/zeusis/touchframe/ITouchFrameService;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
