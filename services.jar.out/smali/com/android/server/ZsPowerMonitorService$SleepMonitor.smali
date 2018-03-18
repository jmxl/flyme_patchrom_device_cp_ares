.class Lcom/android/server/ZsPowerMonitorService$SleepMonitor;
.super Lcom/android/server/ZsPowerMonitorService$Monitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SleepMonitor"
.end annotation


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
    .line 757
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

    .line 756
    return-void
.end method

.method private getMaxWakeupSource()Ljava/lang/String;
    .locals 25

    .prologue
    .line 827
    const/4 v10, 0x0

    .line 828
    .local v10, "reader":Ljava/io/BufferedReader;
    const/16 v6, 0xa

    .line 829
    .local v6, "lineLength":I
    const/4 v14, 0x5

    .line 830
    .local v14, "sincePos":I
    const/4 v8, 0x0

    .line 831
    .local v8, "lockNamePos":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 832
    .local v16, "start":J
    const/4 v9, 0x0

    .line 834
    .local v9, "out":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    const-string/jumbo v22, "/d/wakeup_sources"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 836
    .local v15, "tmp":Ljava/lang/String;
    const/4 v7, 0x0

    .line 837
    .local v7, "lock":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 838
    .local v12, "since":J
    const/4 v5, 0x0

    .line 839
    .end local v7    # "lock":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 840
    const-string/jumbo v19, "\\s+"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 841
    .local v18, "tmpSplit":[Ljava/lang/String;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v22, 0xa

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 842
    const/16 v19, 0x5

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 843
    .local v20, "tmp_since":J
    cmp-long v19, v20, v12

    if-lez v19, :cond_0

    .line 844
    const/16 v19, 0x0

    aget-object v7, v18, v19

    .line 845
    .local v7, "lock":Ljava/lang/String;
    move-wide/from16 v12, v20

    .line 846
    move-object v5, v15

    .local v5, "line":Ljava/lang/String;
    goto :goto_0

    .line 850
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "lock":Ljava/lang/String;
    .end local v18    # "tmpSplit":[Ljava/lang/String;
    .end local v20    # "tmp_since":J
    :cond_1
    if-eqz v7, :cond_2

    .line 851
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Max wakeup_source is "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, ", "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 852
    const-string/jumbo v22, "since "

    .line 851
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 852
    const-wide/16 v22, 0x3e8

    div-long v22, v12, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    .line 851
    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 852
    const-string/jumbo v22, "s, "

    .line 851
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 853
    const-string/jumbo v22, "cost "

    .line 851
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    .line 851
    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 853
    const-string/jumbo v22, "ms. "

    .line 851
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 854
    const-string/jumbo v22, "\\s+"

    const-string/jumbo v23, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 851
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 854
    const-string/jumbo v22, ". "

    .line 851
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 856
    .end local v9    # "out":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 861
    if-eqz v11, :cond_3

    .line 862
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v10, v11

    .line 868
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "since":J
    .end local v15    # "tmp":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v9

    .line 864
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "since":J
    .restart local v15    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 865
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "close /d/wakeup_sources throw "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 857
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "since":J
    .end local v15    # "tmp":Ljava/lang/String;
    .restart local v9    # "out":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 858
    .end local v9    # "out":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "read /d/wakeup_sources throw "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 861
    if-eqz v10, :cond_4

    .line 862
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 864
    :catch_2
    move-exception v4

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "close /d/wakeup_sources throw "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 859
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    .line 861
    :goto_4
    if-eqz v10, :cond_5

    .line 862
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 859
    :cond_5
    :goto_5
    throw v19

    .line 864
    :catch_3
    move-exception v4

    .line 865
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "close /d/wakeup_sources throw "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 859
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 857
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method computeDuration(Landroid/os/Message;)J
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 793
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 794
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v8, "time"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 795
    .local v1, "time":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v2, v10, v8

    .line 796
    .local v2, "delta_rtc":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v4, v10, v8

    .line 797
    .local v4, "delta_uptime":J
    sub-long v6, v2, v4

    .line 798
    .local v6, "sleep_duration":J
    return-wide v6
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->getMaxWakeupSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v2}, Landroid/os/ZsPowerMonitorInternal;->getAllWakeLocks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 762
    return-void

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTriggerLocked(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->usbConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    iget-object v3, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    const-string/jumbo v4, "usb connected abort onTriggerLocked"

    invoke-static {v3, v4}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return v8

    .line 808
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->computeDuration(Landroid/os/Message;)J

    move-result-wide v0

    .line 809
    .local v0, "sleep_duration":J
    iget-wide v4, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mParam1:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_3

    .line 810
    invoke-direct {p0}, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->getMaxWakeupSource()Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, "wakeup_source":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 812
    const-string/jumbo v3, "diag_mdlog_wakelock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    invoke-static {}, Landroid/os/ZsPowerMonitorProxy;->disableIssueReport()V

    .line 815
    :cond_1
    const-string/jumbo v3, "ZsPowerMonitor"

    iget-object v4, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sleep timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mDelay:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms after SCREEN_OFF. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 817
    iget-object v6, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mZsPowerMonitorInternal:Landroid/os/ZsPowerMonitorInternal;

    invoke-virtual {v6, v9}, Landroid/os/ZsPowerMonitorInternal;->getEarliestWakeLock(I)Ljava/lang/String;

    move-result-object v6

    .line 815
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/JunkLog;->mark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_2
    return v9

    .line 821
    .end local v2    # "wakeup_source":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mDelay:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;)V

    .line 822
    return v8
.end method

.method public trigger()V
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->usbConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$SleepMonitor;->mType:Ljava/lang/String;

    const-string/jumbo v1, "usb connected abort trigger"

    invoke-static {v0, v1}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return-void

    .line 775
    :cond_0
    invoke-super {p0}, Lcom/android/server/ZsPowerMonitorService$Monitor;->trigger()V

    .line 770
    return-void
.end method

.method public triggerLocked(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v1, "time":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 785
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 787
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 788
    invoke-super {p0, p1}, Lcom/android/server/ZsPowerMonitorService$Monitor;->triggerLocked(Landroid/os/Message;)V

    .line 779
    return-void
.end method
