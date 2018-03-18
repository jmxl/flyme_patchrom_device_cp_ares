.class Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;
.super Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenOffBatteryMonitor"
.end annotation


# direct methods
.method public constructor <init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "delay"    # J
    .param p7, "param1"    # J
    .param p9, "param2"    # J

    .prologue
    .line 943
    invoke-direct/range {p0 .. p10}, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 942
    return-void
.end method


# virtual methods
.method public onTriggerLocked(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 948
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v5}, Landroid/os/ZsPowerMonitorInternal;->getBatteryLevel()I

    move-result v4

    .line 949
    .local v4, "level":I
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOffLevel:I

    if-ltz v5, :cond_1

    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOffTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    .line 950
    iput v4, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOnLevel:I

    .line 951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOnTime:J

    .line 952
    iget v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOffLevel:I

    iget v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOnLevel:I

    sub-int/2addr v5, v8

    int-to-double v0, v5

    .line 953
    .local v0, "change":D
    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOnTime:J

    iget-wide v10, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOffTime:J

    sub-long v6, v8, v10

    .line 954
    .local v6, "time":J
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v0, v8

    const-wide v10, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v10, v8

    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mParam2:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mParam2:J

    :goto_0
    long-to-double v8, v8

    div-double v2, v10, v8

    .line 955
    .local v2, "changerPerHour":D
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mType:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery level is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "% when screen on, time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 956
    const-string/jumbo v9, ", change:"

    .line 955
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 956
    const-string/jumbo v9, ", changerPerHour:"

    .line 955
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->reset()V

    .line 958
    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mParam1:J

    long-to-double v8, v8

    cmpl-double v5, v2, v8

    if-ltz v5, :cond_2

    .line 959
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mType:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery level drop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "% per hour during screen off, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 960
    const-string/jumbo v9, "% in "

    .line 959
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 960
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    .line 959
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 960
    const-string/jumbo v9, " s"

    .line 959
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return v13

    .end local v2    # "changerPerHour":D
    :cond_0
    move-wide v8, v6

    .line 954
    goto/16 :goto_0

    .line 963
    .end local v0    # "change":D
    .end local v6    # "time":J
    :cond_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v13, :cond_2

    .line 964
    iput v4, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOffLevel:I

    .line 965
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOffTime:J

    .line 966
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOnTime:J

    .line 967
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mScreenOnLevel:I

    .line 968
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOffBatteryMonitor;->mType:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery level is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "% when screen off"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_2
    return v12
.end method
