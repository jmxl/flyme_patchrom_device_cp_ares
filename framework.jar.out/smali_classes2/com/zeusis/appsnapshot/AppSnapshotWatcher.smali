.class public Lcom/zeusis/appsnapshot/AppSnapshotWatcher;
.super Ljava/lang/Object;
.source "AppSnapshotWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;,
        Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;,
        Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final SNAPSHOT_OCCUPIED_FAILED:I = 0x1

.field public static final SNAPSHOT_OOM_FAILED:I = 0x2

.field public static final SNAPSHOT_REPEAT_FAILTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppSnapshotWatcher"


# instance fields
.field private mCallback:Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

.field private mWatcher:Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    .line 30
    new-instance v0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;-><init>(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;)V

    iput-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mWatcher:Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;

    .line 28
    return-void
.end method


# virtual methods
.method public getAppSnapshotWindow(Landroid/os/IBinder;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 34
    iget-object v2, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    if-eqz v2, :cond_1

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getAppSnapshotWindow(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 37
    .local v0, "appClient":Landroid/view/IWindow;
    if-eqz v0, :cond_0

    .line 38
    new-instance v2, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;

    invoke-direct {v2, p0, v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;-><init>(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 40
    .end local v0    # "appClient":Landroid/view/IWindow;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AppSnapshotWatcher"

    const-string/jumbo v3, "getAppSnapshotWindow got an exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v4

    .line 44
    :cond_1
    const-string/jumbo v2, "AppSnapshotWatcher"

    const-string/jumbo v3, "Can NOT got window manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentFocusedWindow()Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v2, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    if-eqz v2, :cond_1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->getCurrentFocusedWindow()Landroid/view/IWindow;

    move-result-object v0

    .line 119
    .local v0, "appClient":Landroid/view/IWindow;
    if-eqz v0, :cond_0

    .line 120
    new-instance v2, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;

    invoke-direct {v2, p0, v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;-><init>(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 122
    .end local v0    # "appClient":Landroid/view/IWindow;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AppSnapshotWatcher"

    const-string/jumbo v3, "getCurrentFocusedWindow got an exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v4

    .line 126
    :cond_1
    const-string/jumbo v2, "AppSnapshotWatcher"

    const-string/jumbo v3, "Can NOT got window manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAppSnapshot(Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;)V
    .locals 4
    .param p1, "appWindow"    # Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;
    .param p2, "callback"    # Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    .prologue
    .line 50
    const-string/jumbo v1, "AppSnapshotWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAppSnapshot appWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p2, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    .line 53
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p1, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->mWatcher:Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;

    invoke-interface {v1, v2}, Landroid/view/IWindow;->startAppSnapshot(Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppSnapshotWatcher"

    const-string/jumbo v2, "startAppSnapshot got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startTextBoom(Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;II)V
    .locals 4
    .param p1, "appWindow"    # Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 132
    const-string/jumbo v1, "AppSnapshotWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTextBoom appWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p1, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    invoke-interface {v1, p2, p3}, Landroid/view/IWindow;->startTextBoom(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppSnapshotWatcher"

    const-string/jumbo v2, "startAppSnapshot got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopAppSnapshot(Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;)V
    .locals 4
    .param p1, "appWindow"    # Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;

    .prologue
    .line 62
    const-string/jumbo v1, "AppSnapshotWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopAppSnapshot appWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p1, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->stopAppSnapshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppSnapshotWatcher"

    const-string/jumbo v2, "stopAppSnapshot got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
