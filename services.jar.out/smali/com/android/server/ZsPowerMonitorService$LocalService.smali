.class final Lcom/android/server/ZsPowerMonitorService$LocalService;
.super Landroid/os/ZsPowerMonitorInternal;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZsPowerMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/ZsPowerMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPowerMonitorService;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-direct {p0}, Landroid/os/ZsPowerMonitorInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmStats()Landroid/os/AlarmStats;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$LocalService;->getAlarmStats()Landroid/os/AlarmStats;

    move-result-object v0

    return-object v0
.end method

.method public getAllWakeLocks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getAllWakeLocks()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public getEarliestWakeLock(I)Ljava/lang/String;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/PowerManagerInternal;->getEarliestWakeLock(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlugType()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    return v0
.end method

.method public getStayOnSetting()I
    .locals 3

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    invoke-static {v1}, Lcom/android/server/ZsPowerMonitorService;->-get2(Lcom/android/server/ZsPowerMonitorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "stay_on_while_plugged_in"

    const/4 v2, 0x7

    .line 489
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isPowered()Z
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/ZsPowerMonitorService$LocalService;->this$0:Lcom/android/server/ZsPowerMonitorService;

    iget-object v0, v0, Lcom/android/server/ZsPowerMonitorService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    return v0
.end method

.method public isUsbConnected()Z
    .locals 13

    .prologue
    .line 441
    const/4 v3, 0x0

    .line 442
    .local v3, "onlineReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 443
    .local v1, "online":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "/sys/class/power_supply/usb/online"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v2, "onlineFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 445
    .local v7, "otgReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 446
    .local v5, "otg":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/sys/class/power_supply/usb/usb_otg"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v6, "otgFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 449
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local v3    # "onlineReader":Ljava/io/BufferedReader;
    .local v4, "onlineReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .local v1, "online":Ljava/lang/String;
    move-object v3, v4

    .line 452
    .end local v1    # "online":Ljava/lang/String;
    .end local v4    # "onlineReader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 453
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .local v8, "otgReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v7    # "otgReader":Ljava/io/BufferedReader;
    move-result-object v5

    .local v5, "otg":Ljava/lang/String;
    move-object v7, v8

    .line 456
    .end local v5    # "otg":Ljava/lang/String;
    .end local v8    # "otgReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    const-string/jumbo v9, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 457
    :cond_2
    const/4 v9, 0x1

    .line 463
    if-eqz v3, :cond_3

    .line 464
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 466
    :cond_3
    if-eqz v7, :cond_4

    .line 467
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 457
    :cond_4
    :goto_0
    return v9

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ZsPowerMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "close /sys/class/power_supply/usb/ throw "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v3, :cond_6

    .line 464
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 466
    :cond_6
    if-eqz v7, :cond_7

    .line 467
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 473
    :cond_7
    :goto_1
    const/4 v9, 0x0

    return v9

    .line 469
    :catch_1
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "ZsPowerMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "close /sys/class/power_supply/usb/ throw "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string/jumbo v9, "ZsPowerMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "read /sys/class/power_supply/usb/ throw "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 463
    if-eqz v3, :cond_8

    .line 464
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 466
    :cond_8
    if-eqz v7, :cond_7

    .line 467
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 469
    :catch_3
    move-exception v0

    .line 470
    const-string/jumbo v9, "ZsPowerMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "close /sys/class/power_supply/usb/ throw "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 463
    :goto_3
    if-eqz v3, :cond_9

    .line 464
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 466
    :cond_9
    if-eqz v7, :cond_a

    .line 467
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 461
    :cond_a
    :goto_4
    throw v9

    .line 469
    :catch_4
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ZsPowerMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "close /sys/class/power_supply/usb/ throw "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "online":Ljava/lang/String;
    .restart local v4    # "onlineReader":Ljava/io/BufferedReader;
    .local v5, "otg":Ljava/lang/String;
    .restart local v7    # "otgReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "onlineReader":Ljava/io/BufferedReader;
    .local v3, "onlineReader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1    # "online":Ljava/lang/String;
    .end local v3    # "onlineReader":Ljava/io/BufferedReader;
    .end local v7    # "otgReader":Ljava/io/BufferedReader;
    .restart local v8    # "otgReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "otgReader":Ljava/io/BufferedReader;
    .local v7, "otgReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 459
    .restart local v1    # "online":Ljava/lang/String;
    .restart local v4    # "onlineReader":Ljava/io/BufferedReader;
    .local v7, "otgReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "onlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "onlineReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "online":Ljava/lang/String;
    .end local v3    # "onlineReader":Ljava/io/BufferedReader;
    .end local v7    # "otgReader":Ljava/io/BufferedReader;
    .restart local v8    # "otgReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "otgReader":Ljava/io/BufferedReader;
    .local v7, "otgReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
