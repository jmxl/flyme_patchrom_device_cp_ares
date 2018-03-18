.class Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;
.super Lcom/android/server/ZsPowerMonitorService$Monitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeupMonitor"
.end annotation


# instance fields
.field mStats:Landroid/os/AlarmStats;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJ)V
    .locals 13
    .param p1, "enable"    # Z
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "delay"    # J
    .param p7, "param1"    # J
    .param p9, "param2"    # J

    .prologue
    .line 877
    const/4 v12, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ZsPowerMonitorService$Monitor;-><init>(ZLjava/lang/String;Landroid/os/Handler;Landroid/content/Context;JJJLcom/android/server/ZsPowerMonitorService$Monitor;)V

    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    .line 876
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    if-eqz v0, :cond_0

    .line 884
    const-string/jumbo v0, "  Alarm Stats during screen off:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    invoke-virtual {v0, p1}, Landroid/os/AlarmStats;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 881
    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTriggerLocked(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 892
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v6}, Landroid/os/ZsPowerMonitorInternal;->getAlarmStats()Landroid/os/AlarmStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    .line 893
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    if-eqz v6, :cond_1

    .line 894
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    invoke-virtual {v6}, Landroid/os/AlarmStats;->getRecordDuration()J

    move-result-wide v0

    .line 895
    .local v0, "duration":J
    iget-wide v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mParam2:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    .line 896
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    invoke-virtual {v6}, Landroid/os/AlarmStats;->calStats()Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mStats:Landroid/os/AlarmStats;

    invoke-virtual {v6}, Landroid/os/AlarmStats;->getSystemWakeups()I

    move-result v3

    .line 898
    .local v3, "wakeups":I
    int-to-double v6, v3

    long-to-double v8, v0

    div-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double v4, v6, v8

    .line 899
    .local v4, "wakeupsPerHour":D
    iget-wide v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mParam1:J

    long-to-double v6, v6

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_0

    .line 900
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mType:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " WakeupsPerHour:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/4 v6, 0x1

    return v6

    .line 903
    :cond_0
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$WakeupMonitor;->mType:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " WakeupsPerHour:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .end local v0    # "duration":J
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "wakeups":I
    .end local v4    # "wakeupsPerHour":D
    :cond_1
    const/4 v6, 0x0

    return v6
.end method
