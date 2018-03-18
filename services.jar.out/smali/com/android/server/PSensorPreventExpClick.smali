.class public Lcom/android/server/PSensorPreventExpClick;
.super Ljava/lang/Object;
.source "PSensorPreventExpClick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PSensorPreventExpClick$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PSensorPreventExpClick"


# instance fields
.field private final TYPICAL_PROXIMITY_THRESHOLD:F

.field private mCondition:Landroid/os/ConditionVariable;

.field private mProximityNear:Z

.field private mProximityThreshold:F

.field private mPsensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private sensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/PSensorPreventExpClick;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->mCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PSensorPreventExpClick;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityNear:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/PSensorPreventExpClick;)F
    .locals 1

    iget v0, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityThreshold:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/PSensorPreventExpClick;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityNear:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityNear:Z

    .line 36
    iput v2, p0, Lcom/android/server/PSensorPreventExpClick;->TYPICAL_PROXIMITY_THRESHOLD:F

    .line 37
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->mCondition:Landroid/os/ConditionVariable;

    .line 64
    new-instance v0, Lcom/android/server/PSensorPreventExpClick$1;

    invoke-direct {v0, p0}, Lcom/android/server/PSensorPreventExpClick$1;-><init>(Lcom/android/server/PSensorPreventExpClick;)V

    iput-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 40
    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->mSensorManager:Landroid/hardware/SensorManager;

    .line 43
    iget-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->mPsensor:Landroid/hardware/Sensor;

    .line 44
    iget-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->mPsensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/server/PSensorPreventExpClick;->mPsensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityThreshold:F

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public getPsensorNearSts()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 50
    iget-object v2, p0, Lcom/android/server/PSensorPreventExpClick;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PSensorPreventExpClick;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PSensorPreventExpClick;->mPsensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 51
    iget-object v2, p0, Lcom/android/server/PSensorPreventExpClick;->mCondition:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    .line 52
    .local v0, "condition":Z
    const-string/jumbo v2, "PSensorPreventExpClick"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "condition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mProximityNear:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityNear:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityNear:Z

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/android/server/PSensorPreventExpClick;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 55
    iget-object v2, p0, Lcom/android/server/PSensorPreventExpClick;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PSensorPreventExpClick;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 56
    if-eqz v1, :cond_1

    .line 57
    iput-boolean v6, p0, Lcom/android/server/PSensorPreventExpClick;->mProximityNear:Z

    .line 58
    const/4 v2, 0x1

    return v2

    .line 53
    :cond_0
    const/4 v1, 0x0

    .local v1, "inject":Z
    goto :goto_0

    .line 61
    .end local v1    # "inject":Z
    :cond_1
    return v6
.end method
