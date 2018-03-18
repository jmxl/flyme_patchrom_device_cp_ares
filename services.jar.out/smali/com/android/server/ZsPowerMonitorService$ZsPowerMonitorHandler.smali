.class final Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;
.super Landroid/os/Handler;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZsPowerMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZsPowerMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/ZsPowerMonitorService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/ZsPowerMonitorService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    .line 511
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 510
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 516
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 544
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/server/ZsPowerMonitorService$Monitor;->getType(I)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v2, v1}, Lcom/android/server/ZsPowerMonitorService;->-wrap1(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)Lcom/android/server/ZsPowerMonitorService$Monitor;

    move-result-object v0

    .line 546
    .local v0, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, p1}, Lcom/android/server/ZsPowerMonitorService$Monitor;->onTrigger(Landroid/os/Message;)V

    .line 515
    .end local v0    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 518
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-virtual {v2}, Lcom/android/server/ZsPowerMonitorService;->preInit()V

    .line 519
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-virtual {v2}, Lcom/android/server/ZsPowerMonitorService;->init()V

    goto :goto_0

    .line 522
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-virtual {v2}, Lcom/android/server/ZsPowerMonitorService;->init()V

    goto :goto_0

    .line 525
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 526
    const-string/jumbo v2, "handle screen on"

    invoke-static {v2}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const-string/jumbo v3, "POWER0001"

    invoke-static {v2, v3}, Lcom/android/server/ZsPowerMonitorService;->-wrap3(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const-string/jumbo v3, "POWER0003"

    invoke-static {v2, v3, p1}, Lcom/android/server/ZsPowerMonitorService;->-wrap2(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;Landroid/os/Message;)V

    .line 533
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const-string/jumbo v3, "POWER0004"

    invoke-static {v2, v3, p1}, Lcom/android/server/ZsPowerMonitorService;->-wrap2(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;Landroid/os/Message;)V

    .line 534
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const-string/jumbo v3, "POWER0005"

    invoke-static {v2, v3, p1}, Lcom/android/server/ZsPowerMonitorService;->-wrap2(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 529
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 530
    const-string/jumbo v2, "handle screen off"

    invoke-static {v2}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const-string/jumbo v3, "POWER0001"

    invoke-static {v2, v3}, Lcom/android/server/ZsPowerMonitorService;->-wrap4(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;)V

    goto :goto_1

    .line 537
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/ZsPowerMonitorService;->-wrap5(Lcom/android/server/ZsPowerMonitorService;I)V

    goto :goto_0

    .line 540
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "battery level changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$ZsPowerMonitorHandler;->this$0:Lcom/android/server/ZsPowerMonitorService;

    const-string/jumbo v3, "POWER0008"

    invoke-static {v2, v3, p1}, Lcom/android/server/ZsPowerMonitorService;->-wrap2(Lcom/android/server/ZsPowerMonitorService;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
