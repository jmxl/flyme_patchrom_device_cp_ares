.class Landroid/view/ViewRootImpl$7;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->startScreenScrollShoot(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 7794
    iput-object p1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 7821
    const-string/jumbo v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailed resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7820
    return-void
.end method

.method public onFinished(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 7809
    const-string/jumbo v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinished bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCurrentWatcher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7810
    iget-object v1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;

    if-eqz v1, :cond_0

    .line 7812
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;

    invoke-interface {v1, p1}, Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;->onSnapshotFinished(Landroid/graphics/Bitmap;)V

    .line 7813
    iget-object v1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7807
    :cond_0
    :goto_0
    return-void

    .line 7814
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 7798
    iget-object v1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;

    if-eqz v1, :cond_0

    .line 7800
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$7;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;

    invoke-interface {v1}, Lcom/zeusis/appsnapshot/IAppSnapshotWatcher;->onSnapshotStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7796
    :cond_0
    :goto_0
    return-void

    .line 7801
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
