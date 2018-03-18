.class final Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PowerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZsPowerMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/ZsPowerMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPowerMonitorService;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    .local v2, "msg":Landroid/os/Message;
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    const-string/jumbo v3, "screen off"

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 253
    .local v2, "msg":Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 254
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 255
    .local v2, "msg":Landroid/os/Message;
    :cond_1
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    const-string/jumbo v4, "screen on"

    invoke-static {v4}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v4}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 258
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 259
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 260
    .local v2, "msg":Landroid/os/Message;
    :cond_2
    const-string/jumbo v5, "com.yulong.intent.action.BETA_KEY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 261
    const-string/jumbo v3, "beta state changed"

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->removeMessages(I)V

    .line 263
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 264
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 265
    .local v2, "msg":Landroid/os/Message;
    :cond_3
    const-string/jumbo v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 266
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v5}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->removeMessages(I)V

    .line 267
    const-string/jumbo v5, "connected"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 268
    const-string/jumbo v5, "host_connected"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 269
    :goto_1
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v5}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 270
    .local v2, "msg":Landroid/os/Message;
    if-eqz v1, :cond_5

    :goto_2
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 271
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 267
    .local v2, "msg":Landroid/os/Message;
    :cond_4
    const/4 v1, 0x1

    .local v1, "connected":Z
    goto :goto_1

    .end local v1    # "connected":Z
    .local v2, "msg":Landroid/os/Message;
    :cond_5
    move v3, v4

    .line 270
    goto :goto_2

    .line 272
    .local v2, "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "battery level changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "level"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 275
    .local v2, "msg":Landroid/os/Message;
    const-string/jumbo v3, "level"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 277
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eq v3, v8, :cond_0

    .line 278
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$PowerBroadcastReceiver;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService;->-get3(Lcom/android/server/ZsPowerMonitorService;)Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
