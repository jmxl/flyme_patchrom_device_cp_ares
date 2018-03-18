.class Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;
.super Lcom/android/server/ZsPowerMonitorService$Monitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DischargingMonitor"
.end annotation


# instance fields
.field private mLastLevel:I

.field private mLastLevelTime:I

.field private mLevel:I

.field private mLevelTime:I


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
    .line 1054
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

    .line 1048
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevel:I

    .line 1049
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevelTime:I

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevel:I

    .line 1051
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevelTime:I

    .line 1053
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1060
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mLevel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mLevelTime "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevelTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->timeFix(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mLastLevel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mLastLevelTime "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevelTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->timeFix(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1058
    return-void

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTriggerLocked(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1069
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevel:I

    .line 1070
    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevelTime:I

    .line 1072
    iget v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevel:I

    if-ne v3, v10, :cond_0

    .line 1073
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevel:I

    .line 1074
    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevelTime:I

    .line 1075
    return v11

    .line 1078
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget v6, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevelTime:I

    sub-int/2addr v3, v6

    int-to-long v4, v3

    .line 1079
    .local v4, "time":J
    iget v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevel:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    sub-int v2, v3, v6

    .line 1080
    .local v2, "level":I
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    int-to-long v6, v2

    iget-wide v8, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mParam1:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_2

    .line 1081
    iput v10, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevel:I

    .line 1082
    iput v10, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLevelTime:I

    .line 1083
    iput v10, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevel:I

    .line 1084
    iput v10, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mLastLevelTime:I

    .line 1086
    int-to-double v6, v2

    long-to-double v8, v4

    div-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v0, v6, v8

    .line 1087
    .local v0, "change":D
    iget-wide v6, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mParam2:J

    long-to-double v6, v6

    cmpl-double v3, v0, v6

    if-ltz v3, :cond_1

    .line 1088
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mType:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "battery level change fast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "% in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "% per hour"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const/4 v3, 0x1

    return v3

    .line 1091
    :cond_1
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$DischargingMonitor;->mType:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "battery level change "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "% in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "% per hour"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .end local v0    # "change":D
    :cond_2
    return v11
.end method
