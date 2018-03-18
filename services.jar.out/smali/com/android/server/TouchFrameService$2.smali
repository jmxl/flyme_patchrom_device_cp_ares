.class Lcom/android/server/TouchFrameService$2;
.super Landroid/content/BroadcastReceiver;
.source "TouchFrameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TouchFrameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TouchFrameService;


# direct methods
.method constructor <init>(Lcom/android/server/TouchFrameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TouchFrameService;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/TouchFrameService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TouchFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    iget-object v3, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v3}, Lcom/android/server/TouchFrameService;->-get1(Lcom/android/server/TouchFrameService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set5(Lcom/android/server/TouchFrameService;I)I

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    iget-object v3, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v3}, Lcom/android/server/TouchFrameService;->-get9(Lcom/android/server/TouchFrameService;)Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowManager;->getRotation()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set7(Lcom/android/server/TouchFrameService;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    const-string/jumbo v2, "TouchFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOrientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v4}, Lcom/android/server/TouchFrameService;->-get5(Lcom/android/server/TouchFrameService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mRotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v4}, Lcom/android/server/TouchFrameService;->-get6(Lcom/android/server/TouchFrameService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    :goto_1
    return-void

    .line 295
    :cond_2
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    const-string/jumbo v2, "TouchFrameService"

    const-string/jumbo v3, "ACTION_SCREEN_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set8(Lcom/android/server/TouchFrameService;Z)Z

    goto :goto_1

    .line 298
    :cond_3
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const-string/jumbo v2, "TouchFrameService"

    const-string/jumbo v3, "ACTION_SCREEN_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v2, p0, Lcom/android/server/TouchFrameService$2;->this$0:Lcom/android/server/TouchFrameService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set8(Lcom/android/server/TouchFrameService;Z)Z

    goto :goto_1

    .line 291
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
