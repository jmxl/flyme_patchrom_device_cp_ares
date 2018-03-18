.class Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;
.super Lcom/zeusis/appsnapshot/IAppSnapshotWatcher$Stub;
.source "AppSnapshotWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/appsnapshot/AppSnapshotWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;


# direct methods
.method private constructor <init>(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-direct {p0}, Lcom/zeusis/appsnapshot/IAppSnapshotWatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;-><init>(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)V

    return-void
.end method


# virtual methods
.method public onSnapshotFailed(I)V
    .locals 2
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "AppSnapshotWatcher"

    const-string/jumbo v1, "onSnapshotFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->-get0(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->-get0(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;->onAppSnapshotFailed(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public onSnapshotFinished(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v0, "AppSnapshotWatcher"

    const-string/jumbo v1, "onSnapshotFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->-get0(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->-get0(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;->onAppSnapshotFinished(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onSnapshotStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    const-string/jumbo v0, "AppSnapshotWatcher"

    const-string/jumbo v1, "onSnapshotStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->-get0(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/zeusis/appsnapshot/AppSnapshotWatcher;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher;->-get0(Lcom/zeusis/appsnapshot/AppSnapshotWatcher;)Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/zeusis/appsnapshot/AppSnapshotWatcher$Callback;->onAppSnapshotStart()V

    .line 89
    :cond_0
    return-void
.end method
