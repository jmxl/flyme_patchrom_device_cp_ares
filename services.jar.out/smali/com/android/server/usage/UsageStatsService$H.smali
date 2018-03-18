.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1358
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1357
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1363
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1423
    iget v3, p1, Landroid/os/Message;->what:I

    .line 1424
    .local v3, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1425
    .local v1, "eventType":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->-get4(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->-get5(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->-get6(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1431
    :cond_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->-get0(Lcom/android/server/usage/UsageStatsService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1432
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4, v2}, Lcom/android/server/usage/UsageStatsService;->-set2(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 1433
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    const-string/jumbo v5, "com.android.launcher3"

    invoke-static {v4, v5}, Lcom/android/server/usage/UsageStatsService;->-set1(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 1434
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->informAppStatusListeners(Ljava/lang/String;II)V

    .line 1435
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->informAppStatusInternalListeners(Ljava/lang/String;II)V

    .line 1362
    .end local v1    # "eventType":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_1
    :goto_0
    return-void

    .line 1365
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v4, v6}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    goto :goto_0

    .line 1369
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    goto :goto_0

    .line 1373
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    goto :goto_0

    .line 1377
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v5, :cond_2

    :goto_1
    invoke-virtual {v7, v4, v8, v5}, Lcom/android/server/usage/UsageStatsService;->informListeners(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    .line 1381
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v5, :cond_3

    :goto_2
    invoke-virtual {v7, v4, v8, v5}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_2

    .line 1385
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/usage/UsageStatsService;->checkIdleStates(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1386
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 1387
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x5

    .line 1386
    invoke-virtual {v5, v8, v7, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1388
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-wide v6, v6, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    .line 1386
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1393
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1394
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/usage/UsageStatsService;->checkIdleStates(I)Z

    goto :goto_0

    .line 1398
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsService;->checkParoleTimeout()V

    goto :goto_0

    .line 1403
    :pswitch_8
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v6}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    goto :goto_0

    .line 1407
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1408
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1409
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1410
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1408
    invoke-virtual {v7, v4, v5, v6}, Lcom/android/server/usage/UsageStatsService;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1411
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 1417
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsService;->informParoleStateChanged()V

    goto/16 :goto_0

    .line 1427
    .restart local v1    # "eventType":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "uid":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    const-string/jumbo v5, "com.android.launcher3"

    invoke-static {v4, v5}, Lcom/android/server/usage/UsageStatsService;->-set2(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 1428
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4, v2}, Lcom/android/server/usage/UsageStatsService;->-set1(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 1429
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->informAppStatusListeners(Ljava/lang/String;II)V

    .line 1430
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->informAppStatusInternalListeners(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method
