.class public abstract Landroid/os/ZsPowerMonitorInternal;
.super Ljava/lang/Object;
.source "ZsPowerMonitorInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAlarmStats()Landroid/os/AlarmStats;
.end method

.method public abstract getAllWakeLocks()Ljava/lang/String;
.end method

.method public abstract getBatteryLevel()I
.end method

.method public abstract getEarliestWakeLock(I)Ljava/lang/String;
.end method

.method public abstract getPlugType()I
.end method

.method public abstract getStayOnSetting()I
.end method

.method public abstract isPowered()Z
.end method

.method public abstract isUsbConnected()Z
.end method
