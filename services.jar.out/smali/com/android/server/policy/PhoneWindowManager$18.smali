.class Lcom/android/server/policy/PhoneWindowManager$18;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$screenshotType"    # I

    .prologue
    .line 6342
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$18;->val$screenshotType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 6345
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 6346
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, p0, :cond_0

    monitor-exit v4

    .line 6347
    return-void

    .line 6349
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v5, v3, Lcom/android/server/policy/PhoneWindowManager;->messenger:Landroid/os/Messenger;

    .line 6350
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->val$screenshotType:I

    const/4 v6, 0x0

    invoke-static {v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    .line 6351
    move-object v2, p0

    .line 6352
    .local v2, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18$1;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3, p0}, Lcom/android/server/policy/PhoneWindowManager$18$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$18;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 6367
    .local v1, "h":Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 6368
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    const/4 v6, 0x0

    iput v6, v5, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 6369
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6370
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 6371
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6372
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6374
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->messenger:Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    invoke-virtual {v3, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v4

    .line 6344
    return-void

    .line 6345
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 6375
    .restart local v1    # "h":Landroid/os/Handler;
    .restart local v2    # "myConn":Landroid/content/ServiceConnection;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 6382
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6383
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 6384
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6385
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 6386
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6387
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap18(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 6388
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->messenger:Landroid/os/Messenger;

    .line 6389
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->msg:Landroid/os/Message;

    .line 6390
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap11(Lcom/android/server/policy/PhoneWindowManager;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 6381
    return-void

    .line 6382
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
