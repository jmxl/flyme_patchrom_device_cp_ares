.class final Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;
.super Lcom/zeusis/touchframe/ITouchFrameService$Stub;
.source "TouchFrameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TouchFrameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchFrameServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TouchFrameService;


# direct methods
.method private constructor <init>(Lcom/android/server/TouchFrameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TouchFrameService;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-direct {p0}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TouchFrameService;Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TouchFrameService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;-><init>(Lcom/android/server/TouchFrameService;)V

    return-void
.end method


# virtual methods
.method public addScreenshotListener(Lcom/zeusis/touchframe/IScreenshotListener;)V
    .locals 5
    .param p1, "l"    # Lcom/zeusis/touchframe/IScreenshotListener;

    .prologue
    .line 468
    invoke-interface {p1}, Lcom/zeusis/touchframe/IScreenshotListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 469
    .local v0, "key":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get7(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TouchFrameService$ScreenshotReceiver;

    .line 470
    .local v1, "r":Lcom/android/server/TouchFrameService$ScreenshotReceiver;
    if-nez v1, :cond_0

    .line 471
    new-instance v1, Lcom/android/server/TouchFrameService$ScreenshotReceiver;

    .end local v1    # "r":Lcom/android/server/TouchFrameService$ScreenshotReceiver;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/TouchFrameService$ScreenshotReceiver;-><init>(Lcom/android/server/TouchFrameService;Lcom/zeusis/touchframe/IScreenshotListener;)V

    .line 472
    .restart local v1    # "r":Lcom/android/server/TouchFrameService$ScreenshotReceiver;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get7(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_0
    const-string/jumbo v2, "TouchFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addScreenshotListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method public addThumbListener(Lcom/zeusis/touchframe/IThumbListener;)V
    .locals 5
    .param p1, "l"    # Lcom/zeusis/touchframe/IThumbListener;

    .prologue
    .line 444
    invoke-interface {p1}, Lcom/zeusis/touchframe/IThumbListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 445
    .local v0, "key":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get8(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TouchFrameService$ThumbReceiver;

    .line 446
    .local v1, "r":Lcom/android/server/TouchFrameService$ThumbReceiver;
    if-nez v1, :cond_0

    .line 447
    new-instance v1, Lcom/android/server/TouchFrameService$ThumbReceiver;

    .end local v1    # "r":Lcom/android/server/TouchFrameService$ThumbReceiver;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/TouchFrameService$ThumbReceiver;-><init>(Lcom/android/server/TouchFrameService;Lcom/zeusis/touchframe/IThumbListener;)V

    .line 448
    .restart local v1    # "r":Lcom/android/server/TouchFrameService$ThumbReceiver;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get8(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_0
    const-string/jumbo v2, "TouchFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addThumbListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-set9(Z)Z

    .line 442
    return-void
.end method

.method public disable(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 414
    const-string/jumbo v0, "TouchFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v0, p1}, Lcom/android/server/TouchFrameService;->-set1(Lcom/android/server/TouchFrameService;I)I

    .line 412
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get1(Lcom/android/server/TouchFrameService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump touchframe from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 493
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 493
    const-string/jumbo v3, ", uid="

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    const-string/jumbo v3, " without permission "

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    const-string/jumbo v3, "android.permission.DUMP"

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    return-void

    .line 497
    :cond_0
    const-string/jumbo v2, "TOUCH FARME MANAGER (dumpsys touchframe)\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Firmware Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v3}, Lcom/android/server/TouchFrameService;->-get10(Lcom/android/server/TouchFrameService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "opti":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 501
    aget-object v0, p3, v1

    .line 502
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 488
    .end local v0    # "opt":Ljava/lang/String;
    :cond_1
    return-void

    .line 502
    .restart local v0    # "opt":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    .line 505
    add-int/lit8 v1, v1, 0x1

    .line 506
    const-string/jumbo v2, "-e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    invoke-static {v5}, Lcom/android/server/TouchFrameService;->-set0(Z)Z

    goto :goto_0

    .line 508
    :cond_3
    const-string/jumbo v2, "-d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    invoke-static {v4}, Lcom/android/server/TouchFrameService;->-set0(Z)Z

    goto :goto_0

    .line 510
    :cond_4
    const-string/jumbo v2, "-o"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 511
    invoke-static {v4}, Lcom/android/server/TouchFrameService;->-set9(Z)Z

    goto :goto_0

    .line 512
    :cond_5
    const-string/jumbo v2, "-c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 513
    invoke-static {v5}, Lcom/android/server/TouchFrameService;->-set9(Z)Z

    goto :goto_0

    .line 514
    :cond_6
    const-string/jumbo v2, "-ll"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 515
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    const/16 v3, 0x1c2

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set4(Lcom/android/server/TouchFrameService;I)I

    .line 516
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get2(Lcom/android/server/TouchFrameService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 517
    :cond_7
    const-string/jumbo v2, "-lr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 518
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    const/16 v3, 0x96

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set4(Lcom/android/server/TouchFrameService;I)I

    .line 519
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get2(Lcom/android/server/TouchFrameService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 520
    :cond_8
    const-string/jumbo v2, "-rl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 521
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    const/16 v3, 0x3a2

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set4(Lcom/android/server/TouchFrameService;I)I

    .line 522
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get2(Lcom/android/server/TouchFrameService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 523
    :cond_9
    const-string/jumbo v2, "-rr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 524
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    const/16 v3, 0x276

    invoke-static {v2, v3}, Lcom/android/server/TouchFrameService;->-set4(Lcom/android/server/TouchFrameService;I)I

    .line 525
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get2(Lcom/android/server/TouchFrameService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 526
    :cond_a
    const-string/jumbo v2, "-b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 527
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-wrap1(Lcom/android/server/TouchFrameService;)V

    goto/16 :goto_0

    .line 528
    :cond_b
    const-string/jumbo v2, "-s"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 529
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-wrap2(Lcom/android/server/TouchFrameService;)V

    goto/16 :goto_0

    .line 530
    :cond_c
    const-string/jumbo v2, "-lk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 531
    invoke-virtual {p0, v5}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->setLocked(Z)V

    goto/16 :goto_0

    .line 532
    :cond_d
    const-string/jumbo v2, "-ak"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 533
    invoke-virtual {p0, v4}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->setLocked(Z)V

    goto/16 :goto_0

    .line 534
    :cond_e
    const-string/jumbo v2, "-bb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 535
    invoke-virtual {p0, v4}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->setKeyMode(I)V

    goto/16 :goto_0

    .line 536
    :cond_f
    const-string/jumbo v2, "-rb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 537
    invoke-virtual {p0, v5}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->setKeyMode(I)V

    goto/16 :goto_0

    .line 538
    :cond_10
    const-string/jumbo v2, "-br"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 539
    invoke-virtual {p0, v8}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->setKeyMode(I)V

    goto/16 :goto_0

    .line 540
    :cond_11
    const-string/jumbo v2, "-p"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 541
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get2(Lcom/android/server/TouchFrameService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 542
    :cond_12
    const-string/jumbo v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 543
    const-string/jumbo v2, "TouchFrame Manager dump options:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const-string/jumbo v2, "  [-e] [-d] [-o] [-c] [-l] [-r] [-h]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v2, "  -e: enable debug logs"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    const-string/jumbo v2, "  -d: disable debug logs"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    const-string/jumbo v2, "  -o: open function"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    const-string/jumbo v2, "  -c: close function"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    const-string/jumbo v2, "  -ll: left touch frame move left"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    const-string/jumbo v2, "  -lr: left touch frame move right"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    const-string/jumbo v2, "  -rl: right touch frame move left"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v2, "  -rr: right touch frame move right"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    const-string/jumbo v2, "  -b: memory clear"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    const-string/jumbo v2, "  -s: split screen"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    const-string/jumbo v2, "  -lk: lock key"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v2, "  -ak: activate key"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string/jumbo v2, "  -bb: back back"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v2, "  -rb: recent back"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string/jumbo v2, "  -br: back recent"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    const-string/jumbo v2, "  -p: payment menu"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string/jumbo v2, "  -h: show this help menu"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    return-void

    .line 564
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public removeScreenshotListener(Lcom/zeusis/touchframe/IScreenshotListener;)V
    .locals 5
    .param p1, "l"    # Lcom/zeusis/touchframe/IScreenshotListener;

    .prologue
    .line 480
    invoke-interface {p1}, Lcom/zeusis/touchframe/IScreenshotListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 481
    .local v0, "key":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get7(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TouchFrameService$ScreenshotReceiver;

    .line 482
    .local v1, "r":Lcom/android/server/TouchFrameService$ScreenshotReceiver;
    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v1}, Lcom/android/server/TouchFrameService$ScreenshotReceiver;->getListener()Lcom/zeusis/touchframe/IScreenshotListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/zeusis/touchframe/IScreenshotListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 484
    :cond_0
    const-string/jumbo v2, "TouchFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeScreenshotListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method public removeThumbListener(Lcom/zeusis/touchframe/IThumbListener;)V
    .locals 6
    .param p1, "l"    # Lcom/zeusis/touchframe/IThumbListener;

    .prologue
    const/4 v5, 0x0

    .line 457
    invoke-interface {p1}, Lcom/zeusis/touchframe/IThumbListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 458
    .local v0, "key":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v2}, Lcom/android/server/TouchFrameService;->-get8(Lcom/android/server/TouchFrameService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TouchFrameService$ThumbReceiver;

    .line 459
    .local v1, "r":Lcom/android/server/TouchFrameService$ThumbReceiver;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Lcom/android/server/TouchFrameService$ThumbReceiver;->getListener()Lcom/zeusis/touchframe/IThumbListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/zeusis/touchframe/IThumbListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 461
    :cond_0
    const-string/jumbo v2, "TouchFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeThumbListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {v5}, Lcom/android/server/TouchFrameService;->-set9(Z)Z

    .line 455
    return-void
.end method

.method public setKeyMode(I)V
    .locals 3
    .param p1, "keyMode"    # I

    .prologue
    .line 421
    const-string/jumbo v0, "TouchFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v0, p1}, Lcom/android/server/TouchFrameService;->-set2(Lcom/android/server/TouchFrameService;I)I

    .line 419
    return-void
.end method

.method public setLocked(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 399
    const-string/jumbo v0, "TouchFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v0, p1}, Lcom/android/server/TouchFrameService;->-set3(Lcom/android/server/TouchFrameService;Z)Z

    .line 401
    iget-object v0, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v0}, Lcom/android/server/TouchFrameService;->-get3(Lcom/android/server/TouchFrameService;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v1}, Lcom/android/server/TouchFrameService;->-get4(Lcom/android/server/TouchFrameService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setGamePMT(Z)V

    .line 397
    return-void
.end method

.method public setOpenPaymentMenuSwith(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 428
    const-string/jumbo v0, "TouchFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOpenPaymentMenuSwith "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/TouchFrameService;->-set6(Lcom/android/server/TouchFrameService;Z)Z

    .line 426
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v0}, Lcom/android/server/TouchFrameService;->-get2(Lcom/android/server/TouchFrameService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper$1;-><init>(Lcom/android/server/TouchFrameService$TouchFrameServiceWrapper;)V

    .line 437
    const-wide/16 v2, 0x12c

    .line 432
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
