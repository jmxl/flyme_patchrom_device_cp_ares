.class Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;
.super Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenOnBatteryMonitor"
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
    .line 976
    invoke-direct/range {p0 .. p10}, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V

    .line 975
    return-void
.end method


# virtual methods
.method public onTriggerLocked(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 981
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v5}, Landroid/os/ZsPowerMonitorInternal;->getBatteryLevel()I

    move-result v4

    .line 982
    .local v4, "level":I
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v13, :cond_0

    iget v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOnLevel:I

    if-ltz v5, :cond_0

    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOnTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_0

    .line 983
    iput v4, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOffLevel:I

    .line 984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOffTime:J

    .line 985
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mType:Ljava/lang/String;

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

    .line 986
    iget v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOnLevel:I

    iget v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOffLevel:I

    sub-int/2addr v5, v8

    int-to-double v0, v5

    .line 987
    .local v0, "change":D
    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOffTime:J

    iget-wide v10, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOnTime:J

    sub-long v6, v8, v10

    .line 988
    .local v6, "time":J
    long-to-double v8, v6

    div-double v8, v0, v8

    const-wide v10, 0x414b774000000000L    # 3600000.0

    mul-double v2, v8, v10

    .line 989
    .local v2, "changerPerHour":D
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->reset()V

    .line 990
    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mParam1:J

    long-to-double v8, v8

    cmpl-double v5, v2, v8

    if-ltz v5, :cond_1

    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mParam2:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 991
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mType:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery level drop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "% per hour during screen on, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 992
    const-string/jumbo v9, "% in "

    .line 991
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 992
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    .line 991
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 992
    const-string/jumbo v9, " s"

    .line 991
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return v13

    .line 995
    .end local v0    # "change":D
    .end local v2    # "changerPerHour":D
    .end local v6    # "time":J
    :cond_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    .line 996
    iput v4, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOnLevel:I

    .line 997
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOnTime:J

    .line 998
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOffTime:J

    .line 999
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mScreenOffLevel:I

    .line 1000
    iget-object v5, p0, Lcom/android/server/ZsPowerMonitorService$ScreenOnBatteryMonitor;->mType:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery level is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "% when screen on"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_1
    return v12
.end method
