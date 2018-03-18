.class public final Landroid/os/ZsPowerMonitorManager;
.super Ljava/lang/Object;
.source "ZsPowerMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ZsPowerMonitorManager$MonitorList;
    }
.end annotation


# static fields
.field public static final BETA_KEY_CHANGE_ACTION:Ljava/lang/String; = "com.yulong.intent.action.BETA_KEY_CHANGE"

.field public static final BETA_PROP:Ljava/lang/String; = "persist.sys.phone.beta.state"

.field public static final ENABLE_SERVICE:Z

.field public static final INVAL_PARAM:J = -0x1L

.field public static final MDLOG_WAKELOCK:Ljava/lang/String; = "diag_mdlog_wakelock"

.field public static final REPORT_POWER_ISSUE:Ljava/lang/String; = "persist.sys.zs.pm.report"

.field public static final TAG:Ljava/lang/String; = "ZsPowerMonitor"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mService:Landroid/os/IZsPowerMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "persist.sys.zs.pm.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/ZsPowerMonitorManager;->ENABLE_SERVICE:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IZsPowerMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IZsPowerMonitor;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/os/ZsPowerMonitorManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Landroid/os/ZsPowerMonitorManager;->mService:Landroid/os/IZsPowerMonitor;

    .line 49
    iput-object p3, p0, Landroid/os/ZsPowerMonitorManager;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method public static disableIssueReport()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "persist.sys.zs.pm.report"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static enableIssueReport()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "persist.sys.zs.pm.report"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string/jumbo v0, "ZsPowerMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/JunkLog;->mark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public static serviceEnabled()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Landroid/os/ZsPowerMonitorManager;->ENABLE_SERVICE:Z

    return v0
.end method

.method public static shouldReportPowerIssue()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Landroid/os/ZsPowerMonitorManager;->serviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.zs.pm.report"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMonitorParam(Ljava/lang/String;)J
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 79
    const-wide/16 v2, -0x1

    .line 81
    .local v2, "param":J
    :try_start_0
    iget-object v1, p0, Landroid/os/ZsPowerMonitorManager;->mService:Landroid/os/IZsPowerMonitor;

    invoke-interface {v1, p1}, Landroid/os/IZsPowerMonitor;->getMonitorParam(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 85
    :goto_0
    return-wide v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ZsPowerMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ZsPowerMonitorManager.getMonitorParam throw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isMonitorEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "enable":Z
    :try_start_0
    iget-object v2, p0, Landroid/os/ZsPowerMonitorManager;->mService:Landroid/os/IZsPowerMonitor;

    invoke-interface {v2, p1}, Landroid/os/IZsPowerMonitor;->isMonitorEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .end local v1    # "enable":Z
    :goto_0
    return v1

    .line 72
    .restart local v1    # "enable":Z
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ZsPowerMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ZsPowerMonitorManager.isMonitorEnable throw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
