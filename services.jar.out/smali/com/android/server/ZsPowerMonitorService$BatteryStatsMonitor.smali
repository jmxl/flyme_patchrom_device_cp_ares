.class Lcom/android/server/ZsPowerMonitorService$BatteryStatsMonitor;
.super Lcom/android/server/ZsPowerMonitorService$Monitor;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryStatsMonitor"
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
    .line 1009
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

    .line 1008
    return-void
.end method
