.class final Lcom/android/server/TouchFrameService$ScreenshotReceiver;
.super Ljava/lang/Object;
.source "TouchFrameService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TouchFrameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenshotReceiver"
.end annotation


# instance fields
.field listener:Lcom/zeusis/touchframe/IScreenshotListener;

.field final synthetic this$0:Lcom/android/server/TouchFrameService;


# direct methods
.method constructor <init>(Lcom/android/server/TouchFrameService;Lcom/zeusis/touchframe/IScreenshotListener;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/TouchFrameService;
    .param p2, "l"    # Lcom/zeusis/touchframe/IScreenshotListener;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->this$0:Lcom/android/server/TouchFrameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->listener:Lcom/zeusis/touchframe/IScreenshotListener;

    .line 372
    :try_start_0
    invoke-interface {p2}, Lcom/zeusis/touchframe/IScreenshotListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TouchFrameService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create Screenshot Receiver faild. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 386
    const-string/jumbo v1, "TouchFrameService"

    const-string/jumbo v2, "Screenshot binderDied"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->listener:Lcom/zeusis/touchframe/IScreenshotListener;

    invoke-interface {v1}, Lcom/zeusis/touchframe/IScreenshotListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .local v0, "key":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v1}, Lcom/android/server/TouchFrameService;->-get7(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 390
    iget-object v1, p0, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v1}, Lcom/android/server/TouchFrameService;->-wrap3(Lcom/android/server/TouchFrameService;)V

    .line 384
    return-void
.end method

.method public getListener()Lcom/zeusis/touchframe/IScreenshotListener;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->listener:Lcom/zeusis/touchframe/IScreenshotListener;

    return-object v0
.end method
