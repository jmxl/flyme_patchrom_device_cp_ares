.class Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;
.super Lcom/android/server/ZsPowerMonitorService$Monitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryLevelMonitor"
.end annotation


# instance fields
.field public mScreenOffLevel:I

.field public mScreenOffTime:J

.field public mScreenOnLevel:I

.field public mScreenOnTime:J


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
    .line 918
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

    .line 919
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->reset()V

    .line 917
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 924
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 925
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mScreenOffLevel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOffLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mScreenOffTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOffTime:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->timeFix(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mScreenOnLevel :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOnLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mScreenOnTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOnTime:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->timeFix(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 923
    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOffTime:J

    .line 934
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOffLevel:I

    .line 935
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOnTime:J

    .line 936
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$BatteryLevelMonitor;->mScreenOnLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 931
    return-void

    .line 932
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
