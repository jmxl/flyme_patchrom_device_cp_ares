.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 4364
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v10, -0x14

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4367
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 4369
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 4630
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error! unhandled message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4633
    :cond_0
    :goto_0
    return v6

    .line 4371
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 4372
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    if-ne v0, v5, :cond_2

    .line 4373
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    .line 4374
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v7, 0x11001

    invoke-virtual {v5, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 4376
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WifiP2pService connection failure, error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4379
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4384
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 4385
    .restart local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    if-ne v0, v5, :cond_0

    .line 4386
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4394
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    .line 4403
    :sswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, -0x1

    invoke-static {v5, p1, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 4406
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4409
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    check-cast v5, Ljava/util/List;

    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4412
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    check-cast v5, Ljava/util/List;

    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4415
    :sswitch_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_4

    move v7, v6

    :cond_4
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set11(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 4418
    :sswitch_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_5

    .line 4419
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4421
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4425
    :sswitch_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    goto/16 :goto_0

    .line 4428
    :sswitch_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_6

    move v7, v6

    :cond_6
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    .line 4432
    :sswitch_b
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4484
    :sswitch_c
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4487
    :sswitch_d
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_8

    .line 4488
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_7

    .line 4489
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4491
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v7, 0x4

    invoke-static {v5, v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4493
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x4

    invoke-static {v5, v8, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4502
    :sswitch_e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 4507
    :sswitch_f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v8, "receive CMD_SILENT_HUNG_CANCEL !"

    invoke-virtual {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4508
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v5, v5, Lcom/android/server/wifi/WifiStateMachine;->mSilentHungEnabled:Z

    if-eqz v5, :cond_0

    .line 4509
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSilentHungEnabled(ZZ)V

    goto/16 :goto_0

    .line 4513
    :sswitch_10
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25002

    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4517
    :sswitch_11
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25005

    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4521
    :sswitch_12
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 4522
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25008

    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4526
    :sswitch_13
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2500c

    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4530
    :sswitch_14
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2500f

    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4534
    :sswitch_15
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25012

    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4538
    :sswitch_16
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x25016

    invoke-static {v5, p1, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4542
    :sswitch_17
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v3

    .line 4543
    .local v3, "featureSet":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v5, p1, v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4546
    .end local v3    # "featureSet":I
    :sswitch_18
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4547
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    .line 4548
    .local v2, "buffer":[B
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4549
    .local v1, "alertReason":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/wifi/BaseWifiLogger;->captureAlertData(I[B)V

    .line 4550
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementAlertReasonCount(I)V

    goto/16 :goto_0

    .line 4555
    .end local v1    # "alertReason":I
    .end local v2    # "buffer":[B
    :sswitch_19
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v7, p1, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4558
    :sswitch_1a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkInfo;

    .line 4559
    .local v4, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 4562
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :sswitch_1b
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_9

    move v7, v6

    :cond_9
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set37(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 4563
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2300d

    invoke-static {v5, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 4567
    :sswitch_1c
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/LinkProperties;

    invoke-static {v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 4570
    :sswitch_1d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v5, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 4575
    :sswitch_1e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4578
    :sswitch_1f
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v8

    invoke-static {v5, p1, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4581
    :sswitch_20
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4584
    :sswitch_21
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4587
    :sswitch_22
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v5

    .line 4588
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 4587
    invoke-virtual {v5, v7, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 4592
    :sswitch_23
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v5

    .line 4593
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 4592
    invoke-virtual {v5, v7, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 4597
    :sswitch_24
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4600
    :sswitch_25
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4603
    :sswitch_26
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiConfigManager;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 4612
    :sswitch_27
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v5, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 4616
    :sswitch_28
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 4617
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4620
    :sswitch_29
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/WifiNative;->installPacketFilter([B)Z

    goto/16 :goto_0

    .line 4623
    :sswitch_2a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4624
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_0

    .line 4626
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_0

    .line 4369
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x2000b -> :sswitch_c
        0x2000c -> :sswitch_c
        0x2000d -> :sswitch_c
        0x2000e -> :sswitch_c
        0x20011 -> :sswitch_c
        0x20013 -> :sswitch_c
        0x20015 -> :sswitch_c
        0x20016 -> :sswitch_c
        0x20017 -> :sswitch_c
        0x20018 -> :sswitch_c
        0x2001f -> :sswitch_2
        0x20033 -> :sswitch_3
        0x20034 -> :sswitch_3
        0x20035 -> :sswitch_3
        0x20036 -> :sswitch_3
        0x20037 -> :sswitch_c
        0x20038 -> :sswitch_c
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_3
        0x2003b -> :sswitch_5
        0x2003c -> :sswitch_4
        0x2003d -> :sswitch_17
        0x2003e -> :sswitch_6
        0x2003f -> :sswitch_19
        0x20047 -> :sswitch_b
        0x20048 -> :sswitch_c
        0x20049 -> :sswitch_c
        0x2004a -> :sswitch_c
        0x2004b -> :sswitch_c
        0x2004c -> :sswitch_1f
        0x2004d -> :sswitch_8
        0x20052 -> :sswitch_7
        0x20053 -> :sswitch_c
        0x20056 -> :sswitch_d
        0x20058 -> :sswitch_c
        0x20059 -> :sswitch_c
        0x2005a -> :sswitch_c
        0x2005d -> :sswitch_c
        0x2005e -> :sswitch_c
        0x2005f -> :sswitch_a
        0x20060 -> :sswitch_c
        0x20061 -> :sswitch_20
        0x20062 -> :sswitch_c
        0x20063 -> :sswitch_1d
        0x20064 -> :sswitch_18
        0x20065 -> :sswitch_28
        0x20066 -> :sswitch_27
        0x20067 -> :sswitch_27
        0x20068 -> :sswitch_27
        0x20069 -> :sswitch_27
        0x20085 -> :sswitch_c
        0x20086 -> :sswitch_9
        0x2008a -> :sswitch_1e
        0x2008b -> :sswitch_1e
        0x2008c -> :sswitch_1c
        0x2008d -> :sswitch_c
        0x2008e -> :sswitch_c
        0x2008f -> :sswitch_c
        0x20090 -> :sswitch_c
        0x20091 -> :sswitch_c
        0x20092 -> :sswitch_c
        0x20093 -> :sswitch_c
        0x20095 -> :sswitch_1e
        0x20098 -> :sswitch_21
        0x2009e -> :sswitch_c
        0x200a0 -> :sswitch_22
        0x200a1 -> :sswitch_23
        0x200a2 -> :sswitch_24
        0x200a3 -> :sswitch_25
        0x200a5 -> :sswitch_26
        0x200ca -> :sswitch_29
        0x200cb -> :sswitch_2a
        0x200cd -> :sswitch_c
        0x200ff -> :sswitch_f
        0x2300b -> :sswitch_1a
        0x2300c -> :sswitch_1b
        0x24001 -> :sswitch_c
        0x24002 -> :sswitch_c
        0x24003 -> :sswitch_c
        0x24004 -> :sswitch_c
        0x24005 -> :sswitch_c
        0x24006 -> :sswitch_c
        0x24007 -> :sswitch_c
        0x2400a -> :sswitch_c
        0x2400c -> :sswitch_e
        0x2400f -> :sswitch_c
        0x24010 -> :sswitch_c
        0x24011 -> :sswitch_c
        0x2402b -> :sswitch_c
        0x25001 -> :sswitch_10
        0x25004 -> :sswitch_11
        0x25007 -> :sswitch_12
        0x2500a -> :sswitch_13
        0x2500e -> :sswitch_14
        0x25011 -> :sswitch_15
        0x25014 -> :sswitch_16
        0x30003 -> :sswitch_c
        0x30004 -> :sswitch_c
        0x30006 -> :sswitch_c
    .end sparse-switch
.end method
