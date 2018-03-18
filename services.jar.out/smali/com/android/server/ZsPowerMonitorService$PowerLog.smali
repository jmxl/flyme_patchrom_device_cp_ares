.class public final Lcom/android/server/ZsPowerMonitorService$PowerLog;
.super Ljava/lang/Object;
.source "ZsPowerMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPowerMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerLog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1100
    sget-boolean v0, Lcom/android/server/ZsPowerMonitorService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZsPowerMonitor"

    const-string/jumbo v1, "POWER0000"

    invoke-static {v0, v1, p0}, Landroid/util/JunkLog;->mark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1104
    sget-boolean v0, Lcom/android/server/ZsPowerMonitorService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZsPowerMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/JunkLog;->mark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1108
    const-string/jumbo v0, "ZsPowerMonitor"

    const-string/jumbo v1, "POWER0000"

    invoke-static {v0, v1, p0}, Landroid/util/JunkLog;->mark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1112
    const-string/jumbo v0, "ZsPowerMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/JunkLog;->mark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void
.end method
