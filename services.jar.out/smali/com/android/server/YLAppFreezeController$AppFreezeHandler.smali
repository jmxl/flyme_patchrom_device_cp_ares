.class final Lcom/android/server/YLAppFreezeController$AppFreezeHandler;
.super Landroid/os/Handler;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YLAppFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppFreezeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/YLAppFreezeController;


# direct methods
.method constructor <init>(Lcom/android/server/YLAppFreezeController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    .line 354
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 353
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 359
    .local v0, "opt":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 360
    .local v3, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 362
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "YLAppFreezeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handler message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " opt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 434
    :goto_0
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v5, v4, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v4, v4, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v4}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v5

    .line 357
    return-void

    .line 365
    :pswitch_0
    if-gtz v0, :cond_0

    .line 366
    const-string/jumbo v4, "YLAppFreezeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid option:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4}, Lcom/android/server/YLAppFreezeController;->-get2(Lcom/android/server/YLAppFreezeController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 370
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4}, Lcom/android/server/YLAppFreezeController;->-get2(Lcom/android/server/YLAppFreezeController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/os/PowerManagerInternal;->isAudioMixLocked(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    const-string/jumbo v4, "YLAppFreezeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  forceFreezePackage  isAudioMixLocked = true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    and-int/lit8 v0, v0, -0x11

    .line 375
    :cond_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_2

    .line 376
    or-int/lit8 v0, v0, 0x27

    .line 379
    :cond_2
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v5, v4, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 380
    :try_start_1
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v4, v4, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    new-instance v6, Landroid/os/freeze/AppFreezeInfo;

    invoke-direct {v6, v3, v1, v0}, Landroid/os/freeze/AppFreezeInfo;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->add(Landroid/os/freeze/AppFreezeInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 382
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    .line 383
    const-string/jumbo v4, "YLAppFreezeController"

    const-string/jumbo v5, "RESTRACT_MOBILE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v3, v1}, Lcom/android/server/YLAppFreezeController;->-wrap5(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V

    .line 386
    :cond_3
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_4

    .line 387
    const-string/jumbo v4, "YLAppFreezeController"

    const-string/jumbo v5, "RESTRACT_WIFI"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v3, v1}, Lcom/android/server/YLAppFreezeController;->-wrap6(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V

    .line 390
    :cond_4
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_5

    .line 391
    const-string/jumbo v4, "YLAppFreezeController"

    const-string/jumbo v5, "RESTRACT_LOCATION"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v1}, Lcom/android/server/YLAppFreezeController;->-wrap7(Lcom/android/server/YLAppFreezeController;Ljava/lang/String;)V

    .line 394
    :cond_5
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_6

    .line 395
    const-string/jumbo v4, "YLAppFreezeController"

    const-string/jumbo v5, "RESTRACT_ALARM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v1}, Lcom/android/server/YLAppFreezeController;->-wrap4(Lcom/android/server/YLAppFreezeController;Ljava/lang/String;)V

    .line 398
    :cond_6
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_7

    .line 399
    const-string/jumbo v4, "YLAppFreezeController"

    const-string/jumbo v5, "RESTRACT_PROCESS"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4}, Lcom/android/server/YLAppFreezeController;->-get0(Lcom/android/server/YLAppFreezeController;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/ActivityManager;->forceFreezePackage(Ljava/lang/String;)V

    .line 406
    :cond_7
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-virtual {v4, v3}, Lcom/android/server/YLAppFreezeController;->isRemoteViewUnfreezeListContainUidInternal(I)Z

    goto/16 :goto_0

    .line 379
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 412
    :pswitch_1
    const/4 v2, 0x0

    .line 413
    .local v2, "removed":Z
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v5, v4, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 414
    :try_start_2
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v4, v4, Lcom/android/server/YLAppFreezeController;->mFrozenRecordUtil:Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/YLAppFreezeController$AppFreezeStoreUtil;->removeByUidAndPkg(ILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .local v2, "removed":Z
    monitor-exit v5

    .line 416
    if-nez v2, :cond_8

    .line 417
    const-string/jumbo v4, "YLAppFreezeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not in frozen record list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_8
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v3}, Lcom/android/server/YLAppFreezeController;->-wrap9(Lcom/android/server/YLAppFreezeController;I)V

    .line 421
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v3}, Lcom/android/server/YLAppFreezeController;->-wrap10(Lcom/android/server/YLAppFreezeController;I)V

    .line 422
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v1}, Lcom/android/server/YLAppFreezeController;->-wrap12(Lcom/android/server/YLAppFreezeController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .local v2, "removed":Z
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 425
    .end local v2    # "removed":Z
    :pswitch_2
    const-string/jumbo v4, "YLAppFreezeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handler MSG_PROCESS_STATE_CHANGE uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v5, v4, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 427
    :try_start_3
    iget-object v4, p0, Lcom/android/server/YLAppFreezeController$AppFreezeHandler;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v4, v3}, Lcom/android/server/YLAppFreezeController;->-wrap2(Lcom/android/server/YLAppFreezeController;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v5

    goto/16 :goto_0

    .line 426
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 434
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
