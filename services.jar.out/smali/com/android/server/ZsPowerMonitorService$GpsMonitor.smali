.class Lcom/android/server/ZsPowerMonitorService$GpsMonitor;
.super Lcom/android/server/ZsPowerMonitorService$Monitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsMonitor"
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
    .line 1015
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

    .line 1014
    return-void
.end method


# virtual methods
.method public onTriggerLocked(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1020
    const/4 v9, 0x0

    .line 1022
    .local v9, "gpsChecked":Z
    const-string/jumbo v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1023
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    .line 1024
    .local v1, "location":Landroid/location/ILocationManager;
    const/4 v10, 0x0

    .line 1026
    .local v10, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1027
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;->mDelay:J

    iget-wide v4, p0, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;->mParam1:J

    iget-wide v6, p0, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;->mParam2:J

    invoke-interface/range {v1 .. v7}, Landroid/location/ILocationManager;->getMaxGpsUsagePackage(JJJ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1033
    .end local v10    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 1034
    const/4 v9, 0x1

    .line 1035
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;->mType:Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;->trigger()V

    .line 1043
    return v9

    .line 1029
    .restart local v10    # "result":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1030
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ZsPowerMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GpsMonitor throw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v10    # "result":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/ZsPowerMonitorService$GpsMonitor;->mType:Ljava/lang/String;

    const-string/jumbo v3, "no package use gps too much"

    invoke-static {v2, v3}, Lcom/android/server/ZsPowerMonitorService$PowerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
