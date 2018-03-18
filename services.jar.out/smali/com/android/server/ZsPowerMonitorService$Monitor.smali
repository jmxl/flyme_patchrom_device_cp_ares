.class Lcom/android/server/ZsPowerMonitorService$Monitor;
.super Ljava/lang/Object;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Monitor"
.end annotation


# static fields
.field public static final HOUR_MS:J = 0x36ee80L


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mDelay:J

.field public final mEnable:Z

.field public mHandler:Landroid/os/Handler;

.field public final mId:I

.field public mMissed:I

.field public final mMonitorLock:Ljava/lang/Object;

.field public final mParam1:J

.field public final mParam2:J

.field public mTimes:I

.field public mTriggered:Z

.field public final mType:Ljava/lang/String;

.field public mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;


# direct methods
.method private constructor <init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "delay"    # J
    .param p7, "param1"    # J
    .param p9, "param2"    # J

    .prologue
    const/4 v0, 0x0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMissed:I

    .line 575
    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTimes:I

    .line 578
    iput-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    .line 586
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMonitorLock:Ljava/lang/Object;

    .line 589
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-ltz v1, :cond_0

    .end local p1    # "enable":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mEnable:Z

    .line 590
    iput-object p2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mType:Ljava/lang/String;

    .line 591
    invoke-static {p2}, Lcom/android/server/ZsPowerMonitorService$Monitor;->parseId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mId:I

    .line 592
    iput-wide p5, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mDelay:J

    .line 593
    iput-object p3, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mHandler:Landroid/os/Handler;

    .line 594
    iput-object p4, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mContext:Landroid/content/Context;

    .line 595
    iput-wide p7, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mParam1:J

    .line 596
    iput-wide p9, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mParam2:J

    .line 597
    iput-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    .line 598
    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMissed:I

    .line 599
    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTimes:I

    .line 600
    const-class v0, Landroid/os/ZsPowerMonitorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ZsPowerMonitorInternal;

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    .line 588
    return-void

    .restart local p1    # "enable":Z
    :cond_0
    move p1, v0

    .line 589
    goto :goto_0
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJLcom/android/server/ZsPowerMonitorService$Monitor;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "delay"    # J
    .param p7, "param1"    # J
    .param p9, "param2"    # J

    .prologue
    invoke-direct/range {p0 .. p10}, Lcom/android/server/ZsPowerMonitorService$Monitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    return-void
.end method

.method public static getMonitor(Ljava/lang/String;ZLandroid/os/Handler;Landroid/content/Context;JJJ)Lcom/android/server/ZsPowerMonitorService$Monitor;
    .locals 14
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "enable"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "delay"    # J
    .param p6, "param1"    # J
    .param p8, "param2"    # J

    .prologue
    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init monitor:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " enable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " delay:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " param1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " param2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    const-string/jumbo v2, "POWER0001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 632
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :goto_0
    return-object v3

    .line 606
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :cond_0
    const-string/jumbo v2, "POWER0003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 612
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    goto :goto_0

    .line 606
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :cond_1
    const-string/jumbo v2, "POWER0004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 615
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    goto :goto_0

    .line 606
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :cond_2
    const-string/jumbo v2, "POWER0005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 617
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 618
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    goto :goto_0

    .line 606
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :cond_3
    const-string/jumbo v2, "POWER0006"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 620
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$BatteryStatsMonitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$BatteryStatsMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 621
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    goto :goto_0

    .line 606
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :cond_4
    const-string/jumbo v2, "POWER0007"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 623
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 624
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    goto/16 :goto_0

    .line 606
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :cond_5
    const-string/jumbo v2, "POWER0008"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 626
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 627
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    goto/16 :goto_0

    .line 629
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    :cond_6
    new-instance v3, Lcom/android/server/ZsPowerMonitorService$Monitor;

    .end local v3    # "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    move v4, p1

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/ZsPowerMonitorService$Monitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 630
    .local v3, "monitor":Lcom/android/server/ZsPowerMonitorService$Monitor;
    goto/16 :goto_0
.end method

.method public static getType(I)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 640
    const/16 v0, 0x2710

    if-le p0, v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "POWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%04d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit16 v3, p0, -0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 643
    :cond_0
    const-string/jumbo v0, "POWER0000"

    return-object v0
.end method

.method public static parseId(Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 636
    const-string/jumbo v0, "POWER"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 655
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " delay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mDelay:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " param1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mParam1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " param2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mParam2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mMissed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMissed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mTimes:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mTriggered:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/ZsPowerMonitorService$Monitor;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 654
    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 665
    return-void
.end method

.method public getParam1()J
    .locals 2

    .prologue
    .line 651
    iget-wide v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mParam1:J

    return-wide v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mEnable:Z

    return v0
.end method

.method public onTrigger(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/ZsPowerMonitorService$Monitor;->onTriggerLocked(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 709
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTriggerLocked(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 738
    const/4 v0, 0x1

    return v0
.end method

.method public onTriggerNow(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mEnable:Z

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTriggerNow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/server/ZsPowerMonitorService$Monitor;->onTriggerLocked(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 721
    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 699
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    if-eqz v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMonitor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    .line 703
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mId:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 698
    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 732
    return-void
.end method

.method public timeFix(J)Ljava/lang/String;
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 746
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 749
    :cond_0
    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method public trigger()V
    .locals 1

    .prologue
    .line 669
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->trigger(I)V

    .line 668
    return-void
.end method

.method public trigger(I)V
    .locals 4
    .param p1, "arg"    # I

    .prologue
    .line 673
    iget-boolean v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mEnable:Z

    if-nez v1, :cond_0

    .line 674
    return-void

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 678
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    if-eqz v1, :cond_1

    .line 679
    iget v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMissed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mMissed:I

    .line 680
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->remove()V

    .line 683
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    if-nez v1, :cond_2

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerMonitor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 685
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mTriggered:Z

    .line 686
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mId:I

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 687
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->triggerLocked(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    monitor-exit v2

    .line 672
    return-void

    .line 677
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public triggerLocked(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 694
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 695
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mDelay:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 693
    return-void
.end method

.method public usbConnected()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$Monitor;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v0}, Landroid/os/ZsPowerMonitorInternal;->isUsbConnected()Z

    move-result v0

    return v0
.end method
