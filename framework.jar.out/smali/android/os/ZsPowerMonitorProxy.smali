.class public final Landroid/os/ZsPowerMonitorProxy;
.super Ljava/lang/Object;
.source "ZsPowerMonitorProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZsPowerMonitor"

.field private static sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableIssueReport()V
    .locals 4

    .prologue
    .line 40
    :try_start_0
    invoke-static {}, Landroid/os/ZsPowerMonitorProxy;->getIBinder()Landroid/os/IZsPowerMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    invoke-interface {v1}, Landroid/os/IZsPowerMonitor;->disableIssueReport()V

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/os/ZsPowerMonitorManager;->disableIssueReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ZsPowerMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZsPowerMonitorProxy.disableIssueReport throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableIssueReport()V
    .locals 4

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/ZsPowerMonitorProxy;->getIBinder()Landroid/os/IZsPowerMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    invoke-interface {v1}, Landroid/os/IZsPowerMonitor;->enableIssueReport()V

    .line 26
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 31
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/os/ZsPowerMonitorManager;->enableIssueReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ZsPowerMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZsPowerMonitorProxy.enableIssueReport throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getIBinder()Landroid/os/IZsPowerMonitor;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    if-nez v1, :cond_0

    .line 20
    const-string/jumbo v1, "zs_power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 21
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IZsPowerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IZsPowerMonitor;

    move-result-object v1

    sput-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    .line 23
    :cond_0
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    return-object v1
.end method

.method public static getMonitorParam(Ljava/lang/String;)J
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Landroid/os/ZsPowerMonitorProxy;->getIBinder()Landroid/os/IZsPowerMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    invoke-interface {v1, p0}, Landroid/os/IZsPowerMonitor;->getMonitorParam(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ZsPowerMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZsPowerMonitorProxy.getMonitorParam throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static isBetaMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/ZsPowerMonitorProxy;->getIBinder()Landroid/os/IZsPowerMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    invoke-interface {v1}, Landroid/os/IZsPowerMonitor;->isBetaMode()Z

    move-result v1

    return v1

    .line 68
    :cond_0
    const-string/jumbo v1, "persist.sys.phone.beta.state"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ZsPowerMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZsPowerMonitorProxy.isBetaMode throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v4
.end method

.method public static isMonitorEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/ZsPowerMonitorProxy;->getIBinder()Landroid/os/IZsPowerMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    invoke-interface {v1, p0}, Landroid/os/IZsPowerMonitor;->isMonitorEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ZsPowerMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZsPowerMonitorProxy.isMonitorEnable throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0, p1}, Landroid/os/ZsPowerMonitorManager;->mark(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static shouldReportPowerIssue()Z
    .locals 4

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Landroid/os/ZsPowerMonitorProxy;->getIBinder()Landroid/os/IZsPowerMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Landroid/os/ZsPowerMonitorProxy;->sIZsPowerMonitor:Landroid/os/IZsPowerMonitor;

    invoke-interface {v1}, Landroid/os/IZsPowerMonitor;->shouldReportPowerIssue()Z

    move-result v1

    return v1

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/ZsPowerMonitorManager;->shouldReportPowerIssue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ZsPowerMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ZsPowerMonitorProxy.shouldReportPowerIssue throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x1

    return v1
.end method
